Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 609CA835B37
	for <lists+cake@lfdr.de>; Mon, 22 Jan 2024 07:47:52 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6B22B3CB51;
	Mon, 22 Jan 2024 01:47:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1705906059;
	bh=hZ48osgl2dOJM81n0kAikQE07WsueRAlt67Fq7vmtQA=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=T673qRg3np6/xqq7k4YlK2TH1IWoTXdxpUtkaa0UF2AXlxgxvbBawzurDE6lpxvUM
	 d5VsTfJS5GAEuZD2KpNr/0bvLmZO5BbMz9ndGmxRjGJ1qguPVJNEiUMBUsqn6LJPd4
	 Hq/4IV0B5Je65MI8UDRblvyHS0ExvAxU5ohRF8+Fgdp5E96rQl7LeXNL/f2N6K1ayt
	 HIZeCpUbV2MOgemTC3eK4rUfnufO6HFb1eWzC4oTOCwwJN2EIBu7DPxmgKW870JOQC
	 pKNDNVHKVWjvdBuXi9rUUOR6PnuXjji/7xPWSV03NQp5tDVXLeXzJrhirGNRQ9V7OT
	 d1m/HyEKtlAwA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com
 [IPv6:2607:f8b0:4864:20::836])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2083C3CB38;
 Mon, 22 Jan 2024 01:47:37 -0500 (EST)
Received: by mail-qt1-x836.google.com with SMTP id
 d75a77b69052e-42a35c720b8so9397681cf.3; 
 Sun, 21 Jan 2024 22:47:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1705906056; x=1706510856; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=IkinKzk0ChIf7fhtN1YQwE7kVb3Z30/9g9mGEIALCv0=;
 b=eRouWD7zwB52HAdI7+20MriOUrPXK751O/AQxg9nQaGkYuyfEAVd7gS0WjD6c4fOJo
 1PoKOcUXDABYjJCeIWhzaW3yHqoK3iS3cKvNjft6ND5nsxWis6NQhYxo56bXRmd/nkTc
 2oELMBDQY2BEJ7jV2EgEp2hvwID8oquz3VCOgybrNXaIUiJTQiraNHZOE/Qs1MsSXQQE
 uTfzCphfPnG21e74kpn9q/vbGrRjVZb1fvLxAEZUIKcj9tffInOJ5xpp3S91LTI+27Yw
 YYX3GKVXt5qSbYrwyI6T0RmcqklgonK0ih3uUqrbNgnOrv+yr5crizKJtrCXQV/Cso+a
 O8GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705906056; x=1706510856;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=IkinKzk0ChIf7fhtN1YQwE7kVb3Z30/9g9mGEIALCv0=;
 b=pbA7KkeSAefgP2OiBzuWTTwDQ74DLUYYG5JNJgI1pmNh17lFoatUm4VvzrRWjFyKmT
 RPPijC1PfYll28sDSdq7AwiZT/fgwALR5PP3D3qz9xxdpb5TucB+ANwBikA47wgP6Ina
 yR9fY+Zj7s78fVGzxk1p1I1RuZO1goPhownQiBFKL/uQhXXnEdl80jwkm7Bo5Z0qRXam
 JbqhahpUS1Q0l3cGdUyu7XZrkVEmjgecyQA1EvyMUxxpXEOXkZ+FiLEUP10WE//R1p10
 2cILJLGe/35SFlkvu/FqMd+reohCeCPccjc7qqt6Z1dglPBGD2Z36QOREmWozUbgvlx+
 mY8A==
X-Gm-Message-State: AOJu0YxMz8VinQacvNZvc7OhYSXdZjyfiUvH49Hfj/gpdwJX4piw9sA0
 fWl8S135LiVLgWwddS6hwh+5rSz6gYFVbeATlbWnN4eKR+gnrCxwiE1qrVIhxOP5sngmaQzM5RV
 K3JBjteusaFdU46l+FbqC5fJvxO/3QMYO+1g=
X-Google-Smtp-Source: AGHT+IEeESporrgzXaIulQJ2N0y2mQgmnIQpriwA/19PWUuUNrEqpPSApkBNIM2kk5G4VNlBQyr1taVjoE7p1gwVuAk=
X-Received: by 2002:ac8:57c9:0:b0:429:f545:22bf with SMTP id
 w9-20020ac857c9000000b00429f54522bfmr5643001qta.86.1705906056333; Sun, 21 Jan
 2024 22:47:36 -0800 (PST)
MIME-Version: 1.0
References: <772847304-9273@mail.pch.net>
In-Reply-To: <772847304-9273@mail.pch.net>
Date: Mon, 22 Jan 2024 07:47:00 +0100
Message-ID: <CAJUtOOj_ndL7B18-9fx+T9UBxknuRjdCS0zhK-8tebJ-t6RF3w@mail.gmail.com>
To: Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 cake@lists.bufferbloat.net, 
 codel@lists.bufferbloat.net, libreqos <libreqos@lists.bufferbloat.net>, 
 bloat <bloat@lists.bufferbloat.net>, ecn-sane@lists.bufferbloat.net, 
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 make-wifi-fast@lists.bufferbloat.net
Content-Type: multipart/mixed; boundary="0000000000008238f3060f83342b"
Subject: [Cake] FREE IXP Workshop by Bill Woodcock & Packet Clearing House:
 Monday,
 Jan 22 @ 4PM CET / 10AM EST / 7AM PST / 11PM Singapore / 6PM Arabia / 8:30
 PM India
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
From: Frantisek Borsik via Cake <cake@lists.bufferbloat.net>
Reply-To: Frantisek Borsik <frantisek.borsik@gmail.com>
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--0000000000008238f3060f83342b
Content-Type: multipart/alternative; boundary="0000000000008238f0060f833429"

--0000000000008238f0060f833429
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey guys,

Bill <https://www.linkedin.com/in/bwoodcock/> with Packet Clearing House
will be holding a 1 hour long free IXP workshop.
It will be recorded and shared by me and others later, here, as well as on
social media.

In his own words:

Although we generally do something like this about every three days, this
> one will be unusual in that we're doing it for a distributed group, rathe=
r
> than in-person, so we're doing it on Zoom, and anyone who wants to join i=
n
> is welcome. We're using jay joffe's network as the starting-point for the
> conversation: 400 households in a fiber network of 25km radius in rural
> southwestern France. Would an IXP make sense? What would it look like, fr=
om
> a technical, governance, and financial perspective?



> These questions are pertinent to many people right now, because the
> Broadband Equity, Access, and Deployment (BEAD) program in the United
> States is distributing USD 42Bn, and many hope that a significant portion
> of that will be used to improve the connectivity of rural communities in
> the US.


And I want to advertise :-) that he is about to write a doctoral thesis on
this particular topic at the Universite Paris 8, next year! So lot more
great stuff coming from him.

Looking forward to see you all, soon:


*https://us06web.zoom.us/j/86131129506?pwd=3DPlhHgU24uezoTavCWTSP9N0hzpTyEC=
.1
<https://us06web.zoom.us/j/86131129506?pwd=3DPlhHgU24uezoTavCWTSP9N0hzpTyEC=
.1>*

All the best,

Frank

Frantisek (Frank) Borsik



https://www.linkedin.com/in/frantisekborsik

Signal, Telegram, WhatsApp: +421919416714

iMessage, mobile: +420775230885

Skype: casioa5302ca

frantisek.borsik@gmail.com


---------- Forwarded message ---------
From: Bill Woodcock via Nnagain <nnagain@lists.bufferbloat.net>
Date: Sun, Jan 21, 2024 at 11:07=E2=80=AFPM
Subject: [NNagain] IXP workshop
To: <nishal@pch.net>, <sara@pch.net>, <nnagain@lists.bufferbloat.net>
Cc: Bill Woodcock <woody@pch.net>


*Subject:* IXP workshop
*When:* Mon 1/22/2024 4:00 PM - 5:00 PM (1.0 hours) (GMT +01:00)
*Where:*
https://us06web.zoom.us/j/86131129506?pwd=3DPlhHgU24uezoTavCWTSP9N0hzpTyEC.=
1
*Required:* nishal@pch.net, sara@pch.net, nnagain@lists.bufferbloat.net

Zoom Meeting ID: 861 3112 9506
Passcode: 777245
_______________________________________________
Nnagain mailing list
Nnagain@lists.bufferbloat.net
https://lists.bufferbloat.net/listinfo/nnagain

--0000000000008238f0060f833429
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey guys,</div><div><br></div><div><a href=3D"https:/=
/www.linkedin.com/in/bwoodcock/">Bill</a> with Packet Clearing House will b=
e holding a 1 hour long free IXP workshop.=C2=A0</div><div>It will be recor=
ded and shared by me and others later, here, as well as on social media.</d=
iv><div><br></div><div>In his own words:</div><div><br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px=
;border-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1e=
x">Although we generally do something like this about every three days, thi=
s one will be unusual in that we&#39;re doing it for a distributed group, r=
ather than in-person, so we&#39;re doing it on Zoom, and anyone who wants t=
o join in is welcome. We&#39;re using jay joffe&#39;s network as the starti=
ng-point for the conversation: 400 households in a fiber network of 25km ra=
dius in rural southwestern France. Would an IXP make sense? What would it l=
ook like, from a technical, governance, and financial perspective? </blockq=
uote><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-co=
lor:rgb(204,204,204);padding-left:1ex">These questions are pertinent to man=
y people right now, because the Broadband Equity, Access, and Deployment (B=
EAD) program in the United States is distributing USD 42Bn, and many hope t=
hat a significant portion of that will be used to improve the connectivity =
of rural communities in the US.</blockquote><div><br></div><div>And I want =
to advertise :-) that he is about to write a doctoral thesis on this partic=
ular topic at the Universite Paris 8, next year! So lot more great stuff co=
ming from him.=C2=A0</div><div><br></div><div>Looking forward to see you al=
l, soon:</div><div><br></div><div><b><a href=3D"https://us06web.zoom.us/j/8=
6131129506?pwd=3DPlhHgU24uezoTavCWTSP9N0hzpTyEC.1" target=3D"_blank" style=
=3D"font-family:Verdana,Arial,sans-serif;font-size:12px">https://us06web.zo=
om.us/j/86131129506?pwd=3DPlhHgU24uezoTavCWTSP9N0hzpTyEC.1</a><br></b></div=
><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature" data-sma=
rtmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div=
 dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D=
"ltr"><div dir=3D"ltr"><div>All the best,</div><div><br></div><div><p class=
=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frank<u></u><u></u></p><p clas=
s=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u><u></u></p><p class=3D=
"MsoNormal" style=3D"color:rgb(34,34,34)">Frantisek (Frank) Borsik<u></u><u=
></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u>=C2=A0=
<u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=3D"=
https://www.linkedin.com/in/frantisekborsik" style=3D"color:rgb(17,85,204)"=
 target=3D"_blank">https://www.linkedin.com/in/frantisekborsik</a><u></u><u=
></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Signal, Teleg=
ram, WhatsApp: +421919416714=C2=A0<u></u><u></u></p><p class=3D"MsoNormal" =
style=3D"color:rgb(34,34,34)">iMessage, mobile: +420775230885<u></u><u></u>=
</p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Skype: casioa5302c=
a<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a =
href=3D"mailto:frantisek.borsik@gmail.com" style=3D"color:rgb(17,85,204)" t=
arget=3D"_blank">frantisek.borsik@gmail.com</a></p></div></div></div></div>=
</div></div></div></div></div></div></div></div></div><br><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">---------- Forwarded me=
ssage ---------<br>From: <strong class=3D"gmail_sendername" dir=3D"auto">Bi=
ll Woodcock via Nnagain</strong> <span dir=3D"auto">&lt;<a href=3D"mailto:n=
nagain@lists.bufferbloat.net">nnagain@lists.bufferbloat.net</a>&gt;</span><=
br>Date: Sun, Jan 21, 2024 at 11:07=E2=80=AFPM<br>Subject: [NNagain] IXP wo=
rkshop<br>To:  &lt;<a href=3D"mailto:nishal@pch.net">nishal@pch.net</a>&gt;=
,  &lt;<a href=3D"mailto:sara@pch.net">sara@pch.net</a>&gt;,  &lt;<a href=
=3D"mailto:nnagain@lists.bufferbloat.net">nnagain@lists.bufferbloat.net</a>=
&gt;<br>Cc: Bill Woodcock &lt;<a href=3D"mailto:woody@pch.net">woody@pch.ne=
t</a>&gt;<br></div><br><br><table style=3D"font:12px Verdana,Arial,sans-ser=
if">
	<tbody><tr><td><b>Subject:</b></td><td>IXP workshop</td></tr>
	<tr><td><b>When:</b></td><td>Mon 1/22/2024 4:00 PM - 5:00 PM (1.0 hours) (=
GMT +01:00)</td></tr>
	<tr><td><b>Where:</b></td><td><a href=3D"https://us06web.zoom.us/j/8613112=
9506?pwd=3DPlhHgU24uezoTavCWTSP9N0hzpTyEC.1" target=3D"_blank">https://us06=
web.zoom.us/j/86131129506?pwd=3DPlhHgU24uezoTavCWTSP9N0hzpTyEC.1</a></td></=
tr>
	<tr><td><b>Required:</b></td><td><a href=3D"mailto:nishal@pch.net" target=
=3D"_blank">nishal@pch.net</a>, <a href=3D"mailto:sara@pch.net" target=3D"_=
blank">sara@pch.net</a>, <a href=3D"mailto:nnagain@lists.bufferbloat.net" t=
arget=3D"_blank">nnagain@lists.bufferbloat.net</a></td></tr>
</tbody></table>

<p>Zoom Meeting ID: 861 3112 9506<br>Passcode: 777245</p>__________________=
_____________________________<br>
Nnagain mailing list<br>
<a href=3D"mailto:Nnagain@lists.bufferbloat.net" target=3D"_blank">Nnagain@=
lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/nnagain" rel=3D"noreferre=
r" target=3D"_blank">https://lists.bufferbloat.net/listinfo/nnagain</a><br>
</div></div>

--0000000000008238f0060f833429
Content-Type: text/calendar; charset="UTF-8"; method=REQUEST
Content-Transfer-Encoding: 7bit

BEGIN:VCALENDAR
PRODID:-//Kerio Technologies//Kerio Connect//EN
METHOD:REQUEST
VERSION:2.0
X-VERSION-KMS:6.2.0
BEGIN:VTIMEZONE
TZID:Europe/Paris
BEGIN:STANDARD
DTSTART:19961027T030000
TZOFFSETTO:+0100
TZOFFSETFROM:+0200
RRULE:FREQ=YEARLY;BYMONTH=10;BYDAY=-1SU
END:STANDARD
BEGIN:DAYLIGHT
DTSTART:19810329T020000
TZOFFSETTO:+0200
TZOFFSETFROM:+0100
RRULE:FREQ=YEARLY;BYMONTH=3;BYDAY=-1SU
END:DAYLIGHT
END:VTIMEZONE
BEGIN:VEVENT
DTSTART;TZID=Europe/Paris:20240122T160000
DTEND;TZID=Europe/Paris:20240122T170000
SUMMARY:IXP workshop
DESCRIPTION:Zoom Meeting ID: 861 3112 9506\nPasscode: 777245
LOCATION:https://us06web.zoom.us/j/86131129506?pwd=PlhHgU24uezoTa
 vCWTSP9N0hzpTyEC.1
UID:5823B204-D429-4033-827C-FB2D93C3CD3A
SEQUENCE:0
DTSTAMP:20240121T220742Z
URL:https://us06web.zoom.us/j/86131129506?pwd=PlhHgU24uezoTa
 vCWTSP9N0hzpTyEC.1
CREATED:20240121T220601Z
TRANSP:OPAQUE
LAST-MODIFIED:20240121T220735Z
X-BUSYMAC-LASTMODBY:Bill Woodcock
ORGANIZER;CN="Bill Woodcock":mailto:woody@pch.net
X-MICROSOFT-CDO-BUSYSTATUS:BUSY
X-MICROSOFT-CDO-INTENDEDSTATUS:BUSY
ATTENDEE;RSVP=TRUE;CN="Nishal Goburdhan";CUTYPE=INDIVIDUAL:mailto:nishal@pch.net
ATTENDEE;RSVP=TRUE;CN="Sara Alamin";CUTYPE=INDIVIDUAL:mailto:sara@pch.net
ATTENDEE;CN=nnagain@lists.bufferbloat.net;CUTYPE=INDIVIDUAL:mailto:nnagain@lists.bufferbloat.net
X-KERIO-ORIGINAL-PRODID:BusyCal-2023.4.4 (Calendar) Mac OS X/13.0.1
BEGIN:VALARM
UID:4962C82E-B255-4557-BECC-E7C7FEB29EAA
TRIGGER;VALUE=DURATION:-PT5M
X-BUSYMAC-DEFAULT-ALARM:TRUE
ACTION:AUDIO
ATTACH;VALUE=URI:Basso
END:VALARM
END:VEVENT
END:VCALENDAR

--0000000000008238f0060f833429--

--0000000000008238f3060f83342b
Content-Type: application/ics; name="meeting.ics"
Content-Disposition: attachment; filename="meeting.ics"
Content-Transfer-Encoding: base64
Content-ID: <18d2fddecc7cb4734661>
X-Attachment-Id: 18d2fddecc7cb4734661

QkVHSU46VkNBTEVOREFSDQpQUk9ESUQ6LS8vS2VyaW8gVGVjaG5vbG9naWVzLy9LZXJpbyBDb25u
ZWN0Ly9FTg0KTUVUSE9EOlJFUVVFU1QNClZFUlNJT046Mi4wDQpYLVZFUlNJT04tS01TOjYuMi4w
DQpCRUdJTjpWVElNRVpPTkUNClRaSUQ6RXVyb3BlL1BhcmlzDQpCRUdJTjpTVEFOREFSRA0KRFRT
VEFSVDoxOTk2MTAyN1QwMzAwMDANClRaT0ZGU0VUVE86KzAxMDANClRaT0ZGU0VURlJPTTorMDIw
MA0KUlJVTEU6RlJFUT1ZRUFSTFk7QllNT05USD0xMDtCWURBWT0tMVNVDQpFTkQ6U1RBTkRBUkQN
CkJFR0lOOkRBWUxJR0hUDQpEVFNUQVJUOjE5ODEwMzI5VDAyMDAwMA0KVFpPRkZTRVRUTzorMDIw
MA0KVFpPRkZTRVRGUk9NOiswMTAwDQpSUlVMRTpGUkVRPVlFQVJMWTtCWU1PTlRIPTM7QllEQVk9
LTFTVQ0KRU5EOkRBWUxJR0hUDQpFTkQ6VlRJTUVaT05FDQpCRUdJTjpWRVZFTlQNCkRUU1RBUlQ7
VFpJRD1FdXJvcGUvUGFyaXM6MjAyNDAxMjJUMTYwMDAwDQpEVEVORDtUWklEPUV1cm9wZS9QYXJp
czoyMDI0MDEyMlQxNzAwMDANClNVTU1BUlk6SVhQIHdvcmtzaG9wDQpERVNDUklQVElPTjpab29t
IE1lZXRpbmcgSUQ6IDg2MSAzMTEyIDk1MDZcblBhc3Njb2RlOiA3NzcyNDUNCkxPQ0FUSU9OOmh0
dHBzOi8vdXMwNndlYi56b29tLnVzL2ovODYxMzExMjk1MDY/cHdkPVBsaEhnVTI0dWV6b1RhDQog
dkNXVFNQOU4waHpwVHlFQy4xDQpVSUQ6NTgyM0IyMDQtRDQyOS00MDMzLTgyN0MtRkIyRDkzQzND
RDNBDQpTRVFVRU5DRTowDQpEVFNUQU1QOjIwMjQwMTIxVDIyMDc0MloNClVSTDpodHRwczovL3Vz
MDZ3ZWIuem9vbS51cy9qLzg2MTMxMTI5NTA2P3B3ZD1QbGhIZ1UyNHVlem9UYQ0KIHZDV1RTUDlO
MGh6cFR5RUMuMQ0KQ1JFQVRFRDoyMDI0MDEyMVQyMjA2MDFaDQpUUkFOU1A6T1BBUVVFDQpMQVNU
LU1PRElGSUVEOjIwMjQwMTIxVDIyMDczNVoNClgtQlVTWU1BQy1MQVNUTU9EQlk6QmlsbCBXb29k
Y29jaw0KT1JHQU5JWkVSO0NOPSJCaWxsIFdvb2Rjb2NrIjptYWlsdG86d29vZHlAcGNoLm5ldA0K
WC1NSUNST1NPRlQtQ0RPLUJVU1lTVEFUVVM6QlVTWQ0KWC1NSUNST1NPRlQtQ0RPLUlOVEVOREVE
U1RBVFVTOkJVU1kNCkFUVEVOREVFO1JTVlA9VFJVRTtDTj0iTmlzaGFsIEdvYnVyZGhhbiI7Q1VU
WVBFPUlORElWSURVQUw6bWFpbHRvOm5pc2hhbEBwY2gubmV0DQpBVFRFTkRFRTtSU1ZQPVRSVUU7
Q049IlNhcmEgQWxhbWluIjtDVVRZUEU9SU5ESVZJRFVBTDptYWlsdG86c2FyYUBwY2gubmV0DQpB
VFRFTkRFRTtDTj1ubmFnYWluQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldDtDVVRZUEU9SU5ESVZJRFVB
TDptYWlsdG86bm5hZ2FpbkBsaXN0cy5idWZmZXJibG9hdC5uZXQNClgtS0VSSU8tT1JJR0lOQUwt
UFJPRElEOkJ1c3lDYWwtMjAyMy40LjQgKENhbGVuZGFyKSBNYWMgT1MgWC8xMy4wLjENCkJFR0lO
OlZBTEFSTQ0KVUlEOjQ5NjJDODJFLUIyNTUtNDU1Ny1CRUNDLUU3QzdGRUIyOUVBQQ0KVFJJR0dF
UjtWQUxVRT1EVVJBVElPTjotUFQ1TQ0KWC1CVVNZTUFDLURFRkFVTFQtQUxBUk06VFJVRQ0KQUNU
SU9OOkFVRElPDQpBVFRBQ0g7VkFMVUU9VVJJOkJhc3NvDQpFTkQ6VkFMQVJNDQpFTkQ6VkVWRU5U
DQpFTkQ6VkNBTEVOREFSDQo=
--0000000000008238f3060f83342b
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--0000000000008238f3060f83342b--
