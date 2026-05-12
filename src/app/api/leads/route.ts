import { NextResponse } from 'next/server';
import { supabase } from '@/lib/supabase';
import { Resend } from 'resend';

const resend = new Resend(process.env.RESEND_API_KEY);

export async function POST(request: Request) {
  try {
    const body = await request.json();
    const { name, email, company_name, job_title, requirements, product_id } = body;

    // 1. Save to Supabase
    const { data: lead, error: dbError } = await supabase
      .from('leads')
      .insert([
        { 
          name, 
          email, 
          company_name, 
          job_title, 
          requirements, 
          product_id,
          status: 'new' 
        }
      ])
      .select()
      .single();

    if (dbError) throw dbError;

    // 2. Send Email via Resend
    await resend.emails.send({
      from: 'TechUserBase <leads@techuserbase.com>',
      to: ['sudheerkiran@gmail.com'], // Assuming this is the admin email based on context
      subject: `New Lead: ${name} from ${company_name || 'Unknown Company'}`,
      html: `
        <h2>New Lead Received</h2>
        <p><strong>Name:</strong> ${name}</p>
        <p><strong>Email:</strong> ${email}</p>
        <p><strong>Company:</strong> ${company_name || 'N/A'}</p>
        <p><strong>Job Title:</strong> ${job_title || 'N/A'}</p>
        <p><strong>Requirements:</strong> ${requirements || 'N/A'}</p>
        <hr />
        <p>Sent from TechUserBase Lead Engine</p>
      `,
    });

    return NextResponse.json({ success: true, lead });
  } catch (error: any) {
    console.error('Lead Submission Error:', error);
    return NextResponse.json(
      { success: false, error: error.message },
      { status: 500 }
    );
  }
}
