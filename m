Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB753CB015
	for <lists+cake@lfdr.de>; Fri, 16 Jul 2021 02:34:53 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 272313CB66;
	Thu, 15 Jul 2021 20:34:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1626395684;
	bh=Rh9OrOq39W7xKZEWeIbU+q3CP666uRKYQyyAAjWWCnI=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=AiIs6dpx7i0BfwLxW/wQzlnwIzB4iMjT7F2T+LcwrakhH3cUxs1k3diFL2EB4f9CZ
	 C0aHPKAk+3i39utRUaw7O2pesEGgFZ7no10hnjJu5JXzprantSd6bYX7jrPfBHl29z
	 m7rEYkkmcHcpEAIM5Mi7X2dm/SPGKNC4ZFhZqzPq1V53Qyfh8gbN1EVB8Kwvfb1KfX
	 Osk+pvRDDhxoj1H6VjoaBdt8leJ2WKH2wwRZq08thvVfCryPDJmlXMiKW3cVJNOM5h
	 yLGqoN783uCCSqchWKBqAoQWz6NbbhNKFq4zjxzin3JXGQdDWAVRfW/3SgiyBfwFBN
	 wfVKCTSr+zM7A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5487E3CB50
 for <cake@lists.bufferbloat.net>; Thu, 15 Jul 2021 20:34:42 -0400 (EDT)
Received: by mail-ej1-x633.google.com with SMTP id hd33so12307687ejc.9
 for <cake@lists.bufferbloat.net>; Thu, 15 Jul 2021 17:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cVior9XiN6gGxNRRp9PUKOZ7C2bAzwoNnDV5bKL72R8=;
 b=GLECvpuYjsrvjece9AVXWNaXotwpi11ArjSK8n7itRt8rmwuY1KUac2uW2RZszvQ/f
 48OcbWeo1briwsFXhoFHrk+nqi2TeqO2gcr6/E60XhyWHmF4gKHA7WdTN0/RgYw9wb+h
 rJVzcIh7YnC+GOwOSwKtihH0u1f8Oi6dS4DoQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cVior9XiN6gGxNRRp9PUKOZ7C2bAzwoNnDV5bKL72R8=;
 b=mGaM1LklG4HQGoKJOEUF8vnrnF7y6ZtlGQ3yED33ew1lrRR+FiP6NjeG2OsAqxzg5n
 FeVMwoDdY6W64SiGtahkJtM+SkrHX4j16NendKul6I0ypcvO5Cr4t3Js3VgUj4U8HaZg
 cvTsWSGGaHl7X9ihB+MOAAFMj82IXp1xjsJN60eBQrAkaqszViAhIGQRIdRj0X1Y7tWb
 iT/wVaxQ4wfZS699EEqVAylZu7tTYt6uoxf1ZiMNRjBznNEHHn0rEP/OE1ccZQcgOQdc
 d/k/wdL7UR6HMFIEnEL+W6aSPYPkR8eguCp/Ch/tivdXMkKLOicMDHbc8tDgMxfHb5Fx
 KHDA==
X-Gm-Message-State: AOAM532yYyn1w6f/5SZBNN4nkYoQFf1ysV3lAAF1J67fkvCsO4sADdC3
 LR+cezHAq6nl9BIBiFVLM4cC58IHRp7gwmpeT9kDU/c/eAxRrv1tG07bsQb/XfI5fORDogfacDg
 X1ZEo0b+S8S8KmIEAMkI0zOHDHuDL
X-Google-Smtp-Source: ABdhPJypapFHW7ytJJAfXQylR6xxF/Av8wnX6WbtDwCnFbx3ulPxX72pHx0X9tYhwZgpripp9rYKk9EFY1K62FIZrtE=
X-Received: by 2002:a17:906:a04f:: with SMTP id
 bg15mr8578975ejb.417.1626395681042; 
 Thu, 15 Jul 2021 17:34:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <1625859083.09751240@apps.rackspace.com>
 <EF8D7620-438A-4F65-94D9-B35FDB76FBBD@cable.comcast.com>
 <1626111630.69692379@apps.rackspace.com>
 <CAHb6LvoD+ACc+17WhTVmS8HYnYyboJrCg5zQF8uXtzrmqqKfPA@mail.gmail.com>
 <9c3d61c1-7013-414e-964d-9e83f596e69d@candelatech.com>
 <CAHb6LvpyQtGg3sMF2RV_gMpEcaY32A70VaEwtsnoeq4DHtv7EA@mail.gmail.com>
 <1e8bdf58-2a21-f543-a248-be58bcbddbcf@candelatech.com>
 <02c601d777b6$c4ce5a10$4e6b0e30$@rizk.com.de>
 <CAHb6LvqRyuK1Xzt6mNhAteit3qZ3bD0vKSqHqog6ZqgMaiBu9w@mail.gmail.com>
 <1626198543.007132235@apps.rackspace.com>
 <CAHb6LvoMmU5onHBbXCoqvvbgD=z195WvN2vUyazbcfBBhc0Wyg@mail.gmail.com>
 <777A6DD8-94E3-46E6-A2E0-760E214E72CA@akamai.com>
In-Reply-To: <777A6DD8-94E3-46E6-A2E0-760E214E72CA@akamai.com>
Date: Thu, 15 Jul 2021 17:34:30 -0700
Message-ID: <CAHb6LvoN2bJdgcOAW-NmxzHpFVNE91Hhfgwc2_iWNbF=NoYjpg@mail.gmail.com>
To: "Holland, Jake" <jholland@akamai.com>
Subject: Re: [Cake] [Bloat] Little's Law mea culpa,
	but not invalidating my main point
X-BeenThere: cake@lists.bufferbloat.net
X-Mailman-Version: 2.1.20
Precedence: list
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
From: Bob McMahon via Cake <cake@lists.bufferbloat.net>
Reply-To: Bob McMahon <bob.mcmahon@broadcom.com>
Cc: "starlink@lists.bufferbloat.net" <starlink@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Leonard Kleinrock <lk@cs.ucla.edu>, Cake List <cake@lists.bufferbloat.net>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Ben Greear <greearb@candelatech.com>
Content-Type: multipart/mixed; boundary="===============4818422149006838601=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4818422149006838601==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000dafd3a05c732c0f7"

--000000000000dafd3a05c732c0f7
Content-Type: multipart/alternative; boundary="000000000000d5b57405c732c02a"

--000000000000d5b57405c732c02a
Content-Type: text/plain; charset="UTF-8"

Ok, adding support for TCP_WINDOW_CLAMP and TCP_NOTSENT_LOWAT into iperf 2
seems useful for TCP WiFi latency related testing.  These option names are
quite obfuscated. I can't see many but some ultimate networking geeks
knowing what these actually do.

Here are some proposed command/option names which wouldn't pass any "parser
police" (Parser police was the internal discussion list we used at Cisco to
review router commands. The Cisco cli is a disaster even with pp, but less
so than what could have been.)

{"*tcp-rx-window-clamp*", required_argument, &rxwinclamp, 1},
{"*tcp-not-sent-low-watermark*", required_argument, &txnotsendlowwater, 1},

I'd for sure like to rename "tcp-not-sent-low-watermark" to something more
intuitive. (My daughter, trained in linguistics, is having a field day
laughing at this "nerd language" that is beyond human comprehension.) This
cli option sets the socket option and causes the use of select for writes
(vs a write spin loop.)

Thanks in advance for any suggestions here,
Bob

On Wed, Jul 14, 2021 at 6:27 PM Holland, Jake <jholland@akamai.com> wrote:

> From: Bob McMahon via Bloat <bloat@lists.bufferbloat.net>
> > Date: Wed,2021-07-14 at 11:38 AM
> > One challenge I faced with iperf 2 was around flow control's effects on
> > latency. I find if iperf 2 rate limits on writes then the end/end
> > latencies, RTT look good because the pipe is basically empty, while rate
> > limiting reads to the same value fills the window and drives the RTT up.
> > One might conclude, from a network perspective, the write side is
> > better.  But in reality, the write rate limiting is just pushing the
> > delay into the application's logic, i.e. the relevant bytes may not be
> > in the pipe but they aren't at the receiver either, they're stuck
> > somewhere in the "tx application space."
> >
> > It wasn't obvious to me how to address this. We added burst measurements
> > (burst xfer time, and bursts/sec) which, I think, helps.
> ...
> >>> I find the assumption that congestion occurs "in network" as not always
> >>> true. Taking OWD measurements with read side rate limiting suggests
> that
> >>> equally important to mitigating bufferbloat driven latency using
> congestion
> >>> signals is to make sure apps read "fast enough" whatever that means. I
> >>> rarely hear about how important it is for apps to prioritize reads over
> >>> open sockets. Not sure why that's overlooked and bufferbloat gets all
> the
> >>> attention. I'm probably missing something.
>
> Hi Bob,
>
> You're right that the sender generally also has to avoid sending
> more than the receiver can handle to avoid delays in a message-
> reply cycle on the same TCP flow.
>
> In general, I think of failures here as application faults rather
> than network faults.  While important for user experience, it's
> something that an app developer can solve.  That's importantly
> different from network buffering.
>
> It's also somewhat possible to avoid getting excessively backed up
> in the network because of your own traffic.  Here bbr usually does
> a decent job of keeping the queues decently low.  (And you'll maybe
> find that some of the bufferbloat measurement efforts are relying
> on the self-congestion you get out of cubic, so if you switch them
> to bbr you might not get a good answer on how big the network buffers
> are.)
>
> In general, anything along these lines has to give backpressure to
> the sender somehow.  What I'm guessing you saw when you did receiver-
> side rate limiting was that the backpressure had to fill bytes all
> the way back to a full receive kernel buffer (making a 0 rwnd for
> TCP) and a full send kernel buffer before the send writes start
> failing (I think with ENOBUFS iirc?), and that's the first hint the
> sender has that it can't send more data right now.  The assumption
> that the receiver can receive as fast as the sender can send is so
> common that it often goes unstated.
>
> (If you love to suffer, you can maybe get the backpressure to start
> earlier, and with maybe a lower impact to your app-level RTT, if
> you try hard enough from the receive side with TCP_WINDOW_CLAMP:
> https://man7.org/linux/man-pages/man7/tcp.7.html#:~:text=tcp_window_clamp
> But you'll still be living with a full send buffer ahead of the
> message-response.)
>
> But usually the right thing to do if you want receiver-driven rate
> control is to send back some kind of explicit "slow down, it's too
> fast for me" feedback at the app layer that will make the sender send
> slower.  For instance most ABR players will shift down their bitrate
> if they're failing to render video fast enough just as well as if the
> network isn't feeding the video segments fast enough, like if they're
> CPU-bound from something else churning on the machine.  (RTP-based
> video players are supposed to send feedback with this same kind of
> "slow down" capability, and sometimes they do.)
>
> But what you can't fix from the endpoints no matter how hard you
> try is the buffers in the network that get filled by other people's
> traffic.
>
> Getting other people's traffic to avoid breaking my latency when
> we're sharing a bottleneck requires deploying something in the network
> and it's not something I can fix myself except inside my own network.
>
> While the app-specific fixes would make for very fine blog posts or
> stack overflow questions that could help someone who managed to search
> the right terms, there's a lot of different approaches for different
> apps that can solve it more or less, and anyone who tries hard enough
> will land on something that works well enough for them, and you don't
> need a whole movement to get people to make it so their own app works
> ok for them and their users.  The problems can be subtle and maybe
> there will be some late and frustrating nights involved, but anyone
> who gets it reproducible and keeps digging will solve it eventually.
>
> But getting stuff deployed in networks to stop people's traffic
> breaking each other's latency is harder, especially when it's a
> major challenge for people to even grasp the problem and understand
> its causes.  The only possible paths to getting a solution widely
> deployed (assuming you have one that works) start with things like
> "start an advocacy movement" or "get a controlling interest in Cisco".
>
> Best,
> Jake
>
>
>

-- 
This electronic communication and the information and any files transmitted 
with it, or attached to it, are confidential and are intended solely for 
the use of the individual or entity to whom it is addressed and may contain 
information that is confidential, legally privileged, protected by privacy 
laws, or otherwise restricted from disclosure to anyone else. If you are 
not the intended recipient or the person responsible for delivering the 
e-mail to the intended recipient, you are hereby notified that any use, 
copying, distributing, dissemination, forwarding, printing, or copying of 
this e-mail is strictly prohibited. If you received this e-mail in error, 
please return the e-mail to the sender, delete it from your computer, and 
destroy any printed copy of it.

--000000000000d5b57405c732c02a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ok, adding support for TCP_WINDOW_CLAMP and TCP_NOTSENT_LO=
WAT into iperf 2 seems useful for TCP WiFi latency related testing.=C2=A0 T=
hese option=C2=A0names are quite obfuscated. I can&#39;t see many but some =
ultimate networking geeks knowing what these actually do.<br><br>Here are s=
ome proposed command/option names which wouldn&#39;t pass any &quot;parser =
police&quot; (Parser police was the internal discussion list we used at Cis=
co to review router commands. The Cisco cli is a disaster even with pp, but=
 less so than what could have been.)<div><br></div><div>{&quot;<b>tcp-rx-wi=
ndow-clamp</b>&quot;, required_argument, &amp;rxwinclamp, 1},<br>{&quot;<b>=
tcp-not-sent-low-watermark</b>&quot;, required_argument, &amp;txnotsendloww=
ater, 1},<br><br>I&#39;d for sure like to rename &quot;tcp-not-sent-low-wat=
ermark&quot; to something=C2=A0more intuitive. (My daughter, trained in lin=
guistics, is having a field day laughing at this &quot;nerd=C2=A0language&q=
uot; that is beyond human comprehension.) This cli option sets the socket o=
ption and causes the use of select for writes (vs a write spin loop.)=C2=A0=
<br><br>Thanks in advance for any suggestions here,<br>Bob<br><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 14, 202=
1 at 6:27 PM Holland, Jake &lt;<a href=3D"mailto:jholland@akamai.com" targe=
t=3D"_blank">jholland@akamai.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">From: Bob McMahon via Bloat &lt;<a href=3D=
"mailto:bloat@lists.bufferbloat.net" target=3D"_blank">bloat@lists.bufferbl=
oat.net</a>&gt;<br>
&gt; Date: Wed,2021-07-14 at 11:38 AM<br>
&gt; One challenge I faced with iperf 2 was around flow control&#39;s effec=
ts on<br>
&gt; latency. I find if iperf 2 rate limits on writes then the end/end<br>
&gt; latencies, RTT look good because the pipe is basically empty, while ra=
te<br>
&gt; limiting reads to the same value fills the window and drives the RTT u=
p.<br>
&gt; One might conclude, from a network perspective, the write side is<br>
&gt; better.=C2=A0 But in reality, the write rate limiting is just pushing =
the<br>
&gt; delay into the application&#39;s logic, i.e. the relevant bytes may no=
t be<br>
&gt; in the pipe but they aren&#39;t at the receiver either, they&#39;re st=
uck<br>
&gt; somewhere in the &quot;tx application space.&quot;<br>
&gt;<br>
&gt; It wasn&#39;t obvious to me how to address this. We added burst measur=
ements<br>
&gt; (burst xfer time, and bursts/sec) which, I think, helps.<br>
...<br>
&gt;&gt;&gt; I find the assumption that congestion occurs &quot;in network&=
quot; as not always<br>
&gt;&gt;&gt; true. Taking OWD measurements with read side rate limiting sug=
gests that<br>
&gt;&gt;&gt; equally important to mitigating bufferbloat driven latency usi=
ng congestion<br>
&gt;&gt;&gt; signals is to make sure apps read &quot;fast enough&quot; what=
ever that means. I<br>
&gt;&gt;&gt; rarely hear about how important it is for apps to prioritize r=
eads over<br>
&gt;&gt;&gt; open sockets. Not sure why that&#39;s overlooked and bufferblo=
at gets all the<br>
&gt;&gt;&gt; attention. I&#39;m probably missing something.<br>
<br>
Hi Bob,<br>
<br>
You&#39;re right that the sender generally also has to avoid sending<br>
more than the receiver can handle to avoid delays in a message-<br>
reply cycle on the same TCP flow.<br>
<br>
In general, I think of failures here as application faults rather<br>
than network faults.=C2=A0 While important for user experience, it&#39;s<br=
>
something that an app developer can solve.=C2=A0 That&#39;s importantly<br>
different from network buffering.<br>
<br>
It&#39;s also somewhat possible to avoid getting excessively backed up<br>
in the network because of your own traffic.=C2=A0 Here bbr usually does<br>
a decent job of keeping the queues decently low.=C2=A0 (And you&#39;ll mayb=
e<br>
find that some of the bufferbloat measurement efforts are relying<br>
on the self-congestion you get out of cubic, so if you switch them<br>
to bbr you might not get a good answer on how big the network buffers<br>
are.)<br>
<br>
In general, anything along these lines has to give backpressure to<br>
the sender somehow.=C2=A0 What I&#39;m guessing you saw when you did receiv=
er-<br>
side rate limiting was that the backpressure had to fill bytes all<br>
the way back to a full receive kernel buffer (making a 0 rwnd for<br>
TCP) and a full send kernel buffer before the send writes start<br>
failing (I think with ENOBUFS iirc?), and that&#39;s the first hint the<br>
sender has that it can&#39;t send more data right now.=C2=A0 The assumption=
<br>
that the receiver can receive as fast as the sender can send is so<br>
common that it often goes unstated.<br>
<br>
(If you love to suffer, you can maybe get the backpressure to start<br>
earlier, and with maybe a lower impact to your app-level RTT, if<br>
you try hard enough from the receive side with TCP_WINDOW_CLAMP:<br>
<a href=3D"https://man7.org/linux/man-pages/man7/tcp.7.html#:~:text=3Dtcp_w=
indow_clamp" rel=3D"noreferrer" target=3D"_blank">https://man7.org/linux/ma=
n-pages/man7/tcp.7.html#:~:text=3Dtcp_window_clamp</a><br>
But you&#39;ll still be living with a full send buffer ahead of the<br>
message-response.)<br>
<br>
But usually the right thing to do if you want receiver-driven rate<br>
control is to send back some kind of explicit &quot;slow down, it&#39;s too=
<br>
fast for me&quot; feedback at the app layer that will make the sender send<=
br>
slower.=C2=A0 For instance most ABR players will shift down their bitrate<b=
r>
if they&#39;re failing to render video fast enough just as well as if the<b=
r>
network isn&#39;t feeding the video segments fast enough, like if they&#39;=
re<br>
CPU-bound from something else churning on the machine.=C2=A0 (RTP-based<br>
video players are supposed to send feedback with this same kind of<br>
&quot;slow down&quot; capability, and sometimes they do.)<br>
<br>
But what you can&#39;t fix from the endpoints no matter how hard you<br>
try is the buffers in the network that get filled by other people&#39;s<br>
traffic.<br>
<br>
Getting other people&#39;s traffic to avoid breaking my latency when<br>
we&#39;re sharing a bottleneck requires deploying something in the network<=
br>
and it&#39;s not something I can fix myself except inside my own network.<b=
r>
<br>
While the app-specific fixes would make for very fine blog posts or<br>
stack overflow questions that could help someone who managed to search<br>
the right terms, there&#39;s a lot of different approaches for different<br=
>
apps that can solve it more or less, and anyone who tries hard enough<br>
will land on something that works well enough for them, and you don&#39;t<b=
r>
need a whole movement to get people to make it so their own app works<br>
ok for them and their users.=C2=A0 The problems can be subtle and maybe<br>
there will be some late and frustrating nights involved, but anyone<br>
who gets it reproducible and keeps digging will solve it eventually.<br>
<br>
But getting stuff deployed in networks to stop people&#39;s traffic<br>
breaking each other&#39;s latency is harder, especially when it&#39;s a<br>
major challenge for people to even grasp the problem and understand<br>
its causes.=C2=A0 The only possible paths to getting a solution widely<br>
deployed (assuming you have one that works) start with things like<br>
&quot;start an advocacy movement&quot; or &quot;get a controlling interest =
in Cisco&quot;.<br>
<br>
Best,<br>
Jake<br>
<br>
<br>
</blockquote></div></div></div>

<br>
<span style=3D"background-color:rgb(255,255,255)"><font size=3D"2">This ele=
ctronic communication and the information and any files transmitted with it=
, or attached to it, are confidential and are intended solely for the use o=
f the individual or entity to whom it is addressed and may contain informat=
ion that is confidential, legally privileged, protected by privacy laws, or=
 otherwise restricted from disclosure to anyone else. If you are not the in=
tended recipient or the person responsible for delivering the e-mail to the=
 intended recipient, you are hereby notified that any use, copying, distrib=
uting, dissemination, forwarding, printing, or copying of this e-mail is st=
rictly prohibited. If you received this e-mail in error, please return the =
e-mail to the sender, delete it from your computer, and destroy any printed=
 copy of it.</font></span>
--000000000000d5b57405c732c02a--

--000000000000dafd3a05c732c0f7
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIQagYJKoZIhvcNAQcCoIIQWzCCEFcCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
gg3BMIIFDTCCA/WgAwIBAgIQeEqpED+lv77edQixNJMdADANBgkqhkiG9w0BAQsFADBMMSAwHgYD
VQQLExdHbG9iYWxTaWduIFJvb3QgQ0EgLSBSMzETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEGA1UE
AxMKR2xvYmFsU2lnbjAeFw0yMDA5MTYwMDAwMDBaFw0yODA5MTYwMDAwMDBaMFsxCzAJBgNVBAYT
AkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhHbG9iYWxTaWduIEdDQyBS
MyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
vbCmXCcsbZ/a0fRIQMBxp4gJnnyeneFYpEtNydrZZ+GeKSMdHiDgXD1UnRSIudKo+moQ6YlCOu4t
rVWO/EiXfYnK7zeop26ry1RpKtogB7/O115zultAz64ydQYLe+a1e/czkALg3sgTcOOcFZTXk38e
aqsXsipoX1vsNurqPtnC27TWsA7pk4uKXscFjkeUE8JZu9BDKaswZygxBOPBQBwrA5+20Wxlk6k1
e6EKaaNaNZUy30q3ArEf30ZDpXyfCtiXnupjSK8WU2cK4qsEtj09JS4+mhi0CTCrCnXAzum3tgcH
cHRg0prcSzzEUDQWoFxyuqwiwhHu3sPQNmFOMwIDAQABo4IB2jCCAdYwDgYDVR0PAQH/BAQDAgGG
MGAGA1UdJQRZMFcGCCsGAQUFBwMCBggrBgEFBQcDBAYKKwYBBAGCNxQCAgYKKwYBBAGCNwoDBAYJ
KwYBBAGCNxUGBgorBgEEAYI3CgMMBggrBgEFBQcDBwYIKwYBBQUHAxEwEgYDVR0TAQH/BAgwBgEB
/wIBADAdBgNVHQ4EFgQUljPR5lgXWzR1ioFWZNW+SN6hj88wHwYDVR0jBBgwFoAUj/BLf6guRSSu
TVD6Y5qL3uLdG7wwegYIKwYBBQUHAQEEbjBsMC0GCCsGAQUFBzABhiFodHRwOi8vb2NzcC5nbG9i
YWxzaWduLmNvbS9yb290cjMwOwYIKwYBBQUHMAKGL2h0dHA6Ly9zZWN1cmUuZ2xvYmFsc2lnbi5j
b20vY2FjZXJ0L3Jvb3QtcjMuY3J0MDYGA1UdHwQvMC0wK6ApoCeGJWh0dHA6Ly9jcmwuZ2xvYmFs
c2lnbi5jb20vcm9vdC1yMy5jcmwwWgYDVR0gBFMwUTALBgkrBgEEAaAyASgwQgYKKwYBBAGgMgEo
CjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzAN
BgkqhkiG9w0BAQsFAAOCAQEAdAXk/XCnDeAOd9nNEUvWPxblOQ/5o/q6OIeTYvoEvUUi2qHUOtbf
jBGdTptFsXXe4RgjVF9b6DuizgYfy+cILmvi5hfk3Iq8MAZsgtW+A/otQsJvK2wRatLE61RbzkX8
9/OXEZ1zT7t/q2RiJqzpvV8NChxIj+P7WTtepPm9AIj0Keue+gS2qvzAZAY34ZZeRHgA7g5O4TPJ
/oTd+4rgiU++wLDlcZYd/slFkaT3xg4qWDepEMjT4T1qFOQIL+ijUArYS4owpPg9NISTKa1qqKWJ
jFoyms0d0GwOniIIbBvhI2MJ7BSY9MYtWVT5jJO3tsVHwj4cp92CSFuGwunFMzCCA18wggJHoAMC
AQICCwQAAAAAASFYUwiiMA0GCSqGSIb3DQEBCwUAMEwxIDAeBgNVBAsTF0dsb2JhbFNpZ24gUm9v
dCBDQSAtIFIzMRMwEQYDVQQKEwpHbG9iYWxTaWduMRMwEQYDVQQDEwpHbG9iYWxTaWduMB4XDTA5
MDMxODEwMDAwMFoXDTI5MDMxODEwMDAwMFowTDEgMB4GA1UECxMXR2xvYmFsU2lnbiBSb290IENB
IC0gUjMxEzARBgNVBAoTCkdsb2JhbFNpZ24xEzARBgNVBAMTCkdsb2JhbFNpZ24wggEiMA0GCSqG
SIb3DQEBAQUAA4IBDwAwggEKAoIBAQDMJXaQeQZ4Ihb1wIO2hMoonv0FdhHFrYhy/EYCQ8eyip0E
XyTLLkvhYIJG4VKrDIFHcGzdZNHr9SyjD4I9DCuul9e2FIYQebs7E4B3jAjhSdJqYi8fXvqWaN+J
J5U4nwbXPsnLJlkNc96wyOkmDoMVxu9bi9IEYMpJpij2aTv2y8gokeWdimFXN6x0FNx04Druci8u
nPvQu7/1PQDhBjPogiuuU6Y6FnOM3UEOIDrAtKeh6bJPkC4yYOlXy7kEkmho5TgmYHWyn3f/kRTv
riBJ/K1AFUjRAjFhGV64l++td7dkmnq/X8ET75ti+w1s4FRpFqkD2m7pg5NxdsZphYIXAgMBAAGj
QjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBSP8Et/qC5FJK5N
UPpjmove4t0bvDANBgkqhkiG9w0BAQsFAAOCAQEAS0DbwFCq/sgM7/eWVEVJu5YACUGssxOGhigH
M8pr5nS5ugAtrqQK0/Xx8Q+Kv3NnSoPHRHt44K9ubG8DKY4zOUXDjuS5V2yq/BKW7FPGLeQkbLmU
Y/vcU2hnVj6DuM81IcPJaP7O2sJTqsyQiunwXUaMld16WCgaLx3ezQA3QY/tRG3XUyiXfvNnBB4V
14qWtNPeTCekTBtzc3b0F5nCH3oO4y0IrQocLP88q1UOD5F+NuvDV0m+4S4tfGCLw0FREyOdzvcy
a5QBqJnnLDMfOjsl0oZAzjsshnjJYS8Uuu7bVW/fhO4FCU29KNhyztNiUGUe65KXgzHZs7XKR1g/
XzCCBUkwggQxoAMCAQICDBhL7k9eiTHfluW70TANBgkqhkiG9w0BAQsFADBbMQswCQYDVQQGEwJC
RTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTExMC8GA1UEAxMoR2xvYmFsU2lnbiBHQ0MgUjMg
UGVyc29uYWxTaWduIDIgQ0EgMjAyMDAeFw0yMTAyMjIwNDQyMDRaFw0yMjA5MDEwODA5NDlaMIGM
MQswCQYDVQQGEwJJTjESMBAGA1UECBMJS2FybmF0YWthMRIwEAYDVQQHEwlCYW5nYWxvcmUxFjAU
BgNVBAoTDUJyb2FkY29tIEluYy4xFDASBgNVBAMTC0JvYiBNY01haG9uMScwJQYJKoZIhvcNAQkB
Fhhib2IubWNtYWhvbkBicm9hZGNvbS5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
AQDyY95HWFm48WhKUyFbAS9JxiDqBHBdAbgjx4iF46lkqZdVkIJ8pGfcXoGd10Vp9yL5VQevDAt/
A/Jh22uhSgKR9Almeux9xWGhG8cyZwcCwYrsMt84FqCgEQidT+7YGNdd9oKrjU7mFC7pAnnw+cGI
d3NFryurgnNPwfEK0X7HwRsga5pM+Zelr/ZM8MkphE1hCvTuPGakNylOFhP+wKL8Bmhsq5tNIInw
DrPV5EPUikwiGMDmkX8o6roGiUwyqAp8dMZKJZ/vS/aWEELV+gm21Btr7eqdAWyqm09McVpkM4th
v/FOYcj8DeJr8MXmHW53gN2fv0BzQjqAdrdCBPNRAgMBAAGjggHZMIIB1TAOBgNVHQ8BAf8EBAMC
BaAwgaMGCCsGAQUFBwEBBIGWMIGTME4GCCsGAQUFBzAChkJodHRwOi8vc2VjdXJlLmdsb2JhbHNp
Z24uY29tL2NhY2VydC9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAyMC5jcnQwQQYIKwYBBQUHMAGG
NWh0dHA6Ly9vY3NwLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwME0G
A1UdIARGMEQwQgYKKwYBBAGgMgEoCjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxz
aWduLmNvbS9yZXBvc2l0b3J5LzAJBgNVHRMEAjAAMEkGA1UdHwRCMEAwPqA8oDqGOGh0dHA6Ly9j
cmwuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3JsMCMGA1UdEQQc
MBqBGGJvYi5tY21haG9uQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNVHSME
GDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUpyXYr5rh8cZzkns+zXmMG1YkBk4w
DQYJKoZIhvcNAQELBQADggEBACfauRPak93nzbpn8UXqRZqg6iUZch/UfGj9flerMl4TlK5jWulz
Y+rRg+iWkjiLk3O+kKu6GI8TLXB2rsoTnrHYij96Uad5/Ut3Q5F4S0ILgOWVU38l0VZIGGG0CzG1
eLUgN2zjLg++xJuzqijuKQCJb/3+il2MTJ8dcDaXuYcjg7Vt6+EtCBS1SGMVhOTH4Fp50yGWj8ZA
bPF1uuJM+dGLJLheUizCr5J/OBEdENg+DSmrqoZ+kZd76iRaF2CkhboR2394Ft8lFlKQiU0q8lnR
9/kdZ0F0iCcUfhaLaGYWujW7N0LZ+rQuTfuPGLx9zZNeNMWSZi/Pc8vdCO7EnlIxggJtMIICaQIB
ATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhH
bG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwYS+5PXokx35blu9EwDQYJ
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIHnoj/V5OI76Ajt4IZbiIeC929mQafRvpVWe
CTnO9jdxMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDcxNjAw
MzQ0MVowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQA/yUVMaJCVEwMTh55HuzfWw4dlmM6I6Do/q5rWas2bmKpvxzo1x20a
0VFmv6StgPgaRsDFTMeGssfZAXUkiiw1dApgHhDe5daPwnhlBQ4Zz9MNHecT+wzGi3EFDU6b+erj
c3+lOQ9F2sPi6CPmf7iiMSr485Papyt7ItZh2cxcU2B/TbVTOOneYScTx6SJv2FmrHlx8XxOMQ9K
PyzcPABJ6173x4OxhKh2c1ANMbY9EwS6wk4HXQ4ejJzQikq8xJ6gHt9fj+8n09xc/fX+Iqm6MON0
gHgFYJWsZjXpUCSEcrDNrHE25s8TaN1kfeQlAKNe1ISS112rmmN8OagGKUwv
--000000000000dafd3a05c732c0f7--

--===============4818422149006838601==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4818422149006838601==--
