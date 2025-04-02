Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id AD04BAD008A
	for <lists+cake@lfdr.de>; Fri,  6 Jun 2025 12:41:26 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 19EB53D573;
	Fri,  6 Jun 2025 06:41:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749206460;
	bh=m/QzILds1FsPuweaEnsMiy1cenfWyWM3QtKp81BqWXY=;
	h=Date:In-Reply-To:To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=BqYxUTXMnIK3NF3cl9L/74tJehkJfOeNvawW16ku4sVfFqBLFS1JqD3UIr1JvfxMt
	 4rGd5RI/zrJB21Hn0eJbgwuTkRGs8zCwCjhLS2DDaCAiLpkT63sN+0GDR5nza/dLQQ
	 eQE7iidQOiBb63P2WZA1oOMjcsxHYhfbc7COgb06N+2cxddHbZU4r3pxekcJ1LFIiH
	 fqr19bPiXdKiU1+jo9uBLfWCKlKcJsKn+Uo6FdD9fNie10Xay/oj9O9DpOnHIWVjfa
	 0lUZmiSe2C+6of0jgOXBsxtDVYw23zoxr0NkZifSgVktXeaYEalZxTnC8Xln6/wcK6
	 pWTW1JPBRrPfg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 79BE93B29D;
 Tue,  1 Apr 2025 22:12:42 -0400 (EDT)
Received: by mail-pl1-x62c.google.com with SMTP id
 d9443c01a7336-227cf12df27so6196495ad.0; 
 Tue, 01 Apr 2025 19:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1743559961; x=1744164761; darn=lists.bufferbloat.net;
 h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=30Sqyh7MxFlQt8nohMsNQhnxMaeY2viz/OUcLnN7SFM=;
 b=eu+nTH6IYQ4IFVNON/TFPyhctFw6iNn/3Ncuelcrz5LPf2iVM/h3aNt1ULnlOMuO+A
 rPC0TvMV3GPALL+hcrPSVUclcOzFcRYEw4vpMcH5rJkInK4Sfc7ttNuOFU5/pU94o37i
 8IdFvLmv9ri78cXTNKIdSShIbT/N5GcwweoEp5VzFRep+/IXmmyFVxt7LG+YRxk6WCes
 EDpT6f0fZhyBPSOWq5a/fbfMqVC4sxvgO5KP9UkojU9WKJ5ODFYna+sMRUxyyiMNVNOv
 Aa8iFSItKOgFQqr/iR6OYIwLPcbQteI9RroIV56mDvHTxNVDt6iBN+s6XSOYv685GBFb
 KHzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743559961; x=1744164761;
 h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=30Sqyh7MxFlQt8nohMsNQhnxMaeY2viz/OUcLnN7SFM=;
 b=dLoeWGezg4Yzlr6PMDuxQcyMBZoD9v9Kf9sVvZDkrEK0srveGFuCobdrgqlMtpFd4L
 gbd2eMqG6eVDv90LPLQKxzg28xMe+0FasZ/uFGCKDyF/DLn+k/4192upBDJq7DjyfGvy
 RzVV8ooOOwwPjliqtViX/pU1jpJBWdt1fFDHl3egpOMss9s5LAt3zW+RCfuJaO0HQl1Z
 fGh4PUJiwTd0wkR+tpBRpDtjPUZ0dBD4jWYjCctXCal1qXzIi92OLOzgm+iANwrclcPC
 DP+azTITX2/uEZJmktzh2wKF6ntHMAbP58SKhEfmTQ+JKAc7bhMOhK7yKV2BkQ77tKPr
 1k3A==
X-Forwarded-Encrypted: i=1;
 AJvYcCUW9M3aCxzUgao2AYM1sro40DCArscY5gxjdfW80tD8XSgYplgIX9eskw0TqmUOYd9T6gtA@lists.bufferbloat.net,
 AJvYcCUgJgVD0mTGQu/exUz/gNWmG07Oh8OthFFkJpNCqR09wZ2i3hK0nNLeK/QxRCqt7yPfvFZdGQ54wx1Fe552tA==@lists.bufferbloat.net,
 AJvYcCUrf3penNwNsG9MlBjpH2aVxHs+jXoUMPetB9EXkLhVTRIAJpdeNC+Vslv9D4dYnk0WGYfYv+cpcpYJ@lists.bufferbloat.net,
 AJvYcCUuz3EhHmTflHinSnAsHlgI0NAwcug0iIR/9Od3cPOOIKIjNo9g2xJi9kDa3u31pJUA5qBoc5d4CaOr2cKsGlA=@lists.bufferbloat.net,
 AJvYcCVBb2oR0nNLAgMx/+nCPvIF2/vqG2jZ3J0VpbgRqz1Z2hMSASCYe1JpZnAmRcyrg+ouIPtJnw==@lists.bufferbloat.net,
 AJvYcCVZowWxdytbm1lQ6uJY7mppgLKYiqQu4E6uuS/1kZrDue4eKQIsvHdAsz66/qlo9kY9EnnESvTJl0e6JWErQEu2@lists.bufferbloat.net,
 AJvYcCVr4vGtVD2Uc5BGisQGPjtAumPbaCsggdqWzyQ2ejzu5e/eq2X3870iGuCqr32CVIdwyroj5lH4ZXFl9V5GJS4=@lists.bufferbloat.net,
 AJvYcCWJe9JgJjIeVgQ64CiLLsAkYibkWUPSWIH0IRwJ8EqszKC4GdbHCAN5cP6R7rol2bm5R7nXR5Yu2lA=@lists.bufferbloat.net,
 AJvYcCWr1351/OwKGLi04/kCsg2Yye2TwiGgU+jl39e0/jQNRhDfsNk9FCPtszyiU6rIUOVk94sngeKtQw==@lists.bufferbloat.net,
 AJvYcCXH2/fhE1TVPktPwzDVqZOpDWKDBqoCOW4HucIgi+cHXnNnVLOmzHPmMMpjIeR0gkB6Urt8ZdM=@lists.bufferbloat.net,
 AJvYcCXHSuV+U6ep6URZm9Sj5PwpMcp4E7JBxwqnsPSwi1tC6GA0lyZqA6jAQ1TvufDjASzhxBnqvWI=@lists.bufferbloat.net,
 AJvYcCXjAFaqCtaa8P+Pr4szKEgPmQjxNbGTa6oKM7Ys2HlBpb9sm2qhULVZ1dlMwvuwBi+ipr3yAMuJ9tQLNmxKng==@lists.bufferbloat.net,
 AJvYcCXvvKc4kbmDaOry2jYuXqD2GF6XcnCLqSmkHSdTM+IWN4EHoalkT2/aRLJXFULgTZ1RmbacTjQi4l0=@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yx/cc2o03bRV0xXU3D5igukMaYxOVgVuf+gijyE+0JFXwIQcJsA
 cN2Hkguq0SV7Eym+vGb0KYqpmd9AAC/vFxaVaFf58sW2GHu2kGOL
X-Gm-Gg: ASbGncu8XoEbX4ifYqQeI0zC0jcgDELt99bqyiO3u0wDeTGgyJKp/D/raXuL+dhexTT
 WI0UFA6mVhW/1CSfnnn8vBtduzfyWnDOwE+N43XAxWDtLwZQMTv62RfP0G4CPUrKuXmi2m/jr7A
 bWrIL5O6e/M4UWpjzTcEXnTMruRLL6wejjctbs1kyXNV+/DAQa52ODz84q5csKKVbYrX0JWiBh1
 ILH4u4vjXZFQJeYHxi2hpCstmJyzDrS0pBsZAPiVXEv9d5m5uilXu3+qw5PP2S/2W/ULreyikyC
 sxe1DJNuf2NyW1VEn2aXUBN7HRGqf2czUl8UpjZ+7tOpJ2rLBfWMdJXDZkc+x5aTUTX0LK0QTtM
 j5zZJaCFhQfA=
X-Google-Smtp-Source: AGHT+IHEz/m8HBrSt/msY/D1FPrQIm35nIaWc7HzGMta2gMpNFhrny0ibjW2YGVCf8271iifTmm8KQ==
X-Received: by 2002:a17:902:f60d:b0:220:cfb7:56eb with SMTP id
 d9443c01a7336-2296e3c92b4mr4059005ad.26.1743559961343; 
 Tue, 01 Apr 2025 19:12:41 -0700 (PDT)
Received: from smtpclient.apple ([2601:603:4d83:fc0:5b9:ccaa:d0fe:609b])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2291eec68e9sm97396085ad.49.2025.04.01.19.12.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Apr 2025 19:12:40 -0700 (PDT)
Message-Id: <11F96AF6-E164-420F-9B16-3A3F46AF183E@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Date: Tue, 1 Apr 2025 19:12:29 -0700
In-Reply-To: <014po62q-r99p-71np-52r1-n84n9np63nqr@ynat.uz>
To: David Lang <david@lang.hm>
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
 <014po62q-r99p-71np-52r1-n84n9np63nqr@ynat.uz>
X-Mailer: Apple Mail (2.3826.400.131.1.6)
X-Mailman-Approved-At: Fri, 06 Jun 2025 06:40:58 -0400
Subject: Re: [Cake]
 =?utf-8?q?=5BStarlink=5D_=5BBloat=5D_In_loving_memory_of_D?=
 =?utf-8?b?YXZlIFTDpGh0IDwz?=
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
From: Spencer Sevilla via Cake <cake@lists.bufferbloat.net>
Reply-To: Spencer Sevilla <spencer.builds.networks@gmail.com>
Cc: cerowrt-commits@lists.bufferbloat.net, bloat-ietf@lists.bufferbloat.net,
 Herbert Wolverson <hwolverson@libreqos.io>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 cerowrt-users@lists.bufferbloat.net, libreqos <libreqos@lists.bufferbloat.net>,
 Rpm <rpm@lists.bufferbloat.net>,
 =?utf-8?Q?Network_Neutrality_is_back!_Let=C2=B4s_make_the_technical_as?=
 =?utf-8?Q?pects_heard_this_time!?= <nnagain@lists.bufferbloat.net>,
 codel-wireless@lists.bufferbloat.net, cerowrt-devel@lists.bufferbloat.net,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net, "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 =?utf-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============4404461747530225901=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============4404461747530225901==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_BEA54E9B-C798-4D1C-9E29-803C66BFC2EF"


--Apple-Mail=_BEA54E9B-C798-4D1C-9E29-803C66BFC2EF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I didn=E2=80=99t get a chance to know Dave personally, but sincerely =
appreciated his insight and technical efforts, as well as the way he =
just seemed to put out joy in so many forms. I have said multiple times =
that these listservs have some of the highest quality networking =
discussion out there, and I think this is in no small part a testament =
to Dave=E2=80=99s ability to bring people together and get them talking.

I would certainly be willing to help support or volunteer effort to keep =
these listservs running.

> On Apr 1, 2025, at 18:21, David Lang via Starlink =
<starlink@lists.bufferbloat.net> wrote:
>=20
> He will be missed.
>=20
> As a practical question, what is going to happen to all of these =
lists, etc that he has been hosting?
>=20
> David Lang
>=20
> On Tue, 1 Apr 2025, Frantisek Borsik via Bloat wrote:
>=20
>> Date: Tue, 1 Apr 2025 19:27:36 +0200
>> From: Frantisek Borsik via Bloat <bloat@lists.bufferbloat.net =
<mailto:bloat@lists.bufferbloat.net>>
>> Reply-To: Frantisek Borsik <frantisek.borsik@gmail.com =
<mailto:frantisek.borsik@gmail.com>>
>> To: libreqos <libreqos@lists.bufferbloat.net =
<mailto:libreqos@lists.bufferbloat.net>>,
>>    bloat <bloat@lists.bufferbloat.net =
<mailto:bloat@lists.bufferbloat.net>>,
>>    Dave Taht via Starlink <starlink@lists.bufferbloat.net =
<mailto:starlink@lists.bufferbloat.net>>,
>>    Jeremy Austin via Rpm <rpm@lists.bufferbloat.net =
<mailto:rpm@lists.bufferbloat.net>>,
>>    bloat-ietf@lists.bufferbloat.net =
<mailto:bloat-ietf@lists.bufferbloat.net>, Cake List =
<cake@lists.bufferbloat.net <mailto:cake@lists.bufferbloat.net>>,
>>    codel@lists.bufferbloat.net <mailto:codel@lists.bufferbloat.net>, =
cerowrt-commits@lists.bufferbloat.net =
<mailto:cerowrt-commits@lists.bufferbloat.net>,
>>    cerowrt-devel@lists.bufferbloat.net =
<mailto:cerowrt-devel@lists.bufferbloat.net>, =
cerowrt-users@lists.bufferbloat.net =
<mailto:cerowrt-users@lists.bufferbloat.net>,
>>    codel-wireless@lists.bufferbloat.net =
<mailto:codel-wireless@lists.bufferbloat.net>,
>>    Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net =
<mailto:make-wifi-fast@lists.bufferbloat.net>>,
>>    Network Neutrality is back! Let=C2=B4s make the technical aspects =
heard this
>>    time! <nnagain@lists.bufferbloat.net =
<mailto:nnagain@lists.bufferbloat.net>>
>> Cc: Herbert Wolverson <hwolverson@libreqos.io =
<mailto:hwolverson@libreqos.io>>,
>>    "Frantisek (Frank) Borsik" <frank@libreqos.io =
<mailto:frank@libreqos.io>>,
>>    Robert Chac=C3=B3n <robert@libreqos.io =
<mailto:robert@libreqos.io>>
>> Subject: [Bloat] In loving memory of Dave T=C3=A4ht <3
>> Hello to all,
>>=20
>> We=E2=80=99re devastated to announce that Dave T=C3=A4ht has passed =
away.
>> <https://libreqos.io/2025/04/01/in-loving-memory-of-dave/>
>>=20
>> Dave was an amazing man, helping the world with FQ-CoDel and CAKE, =
fighting
>> bufferbloat and trying to make the world a better place. Always =
willing to
>> help, and without him =E2=80=93 LibreQoS (and the other QoE solutions =
out there)
>> wouldn=E2=80=99t exist.
>>=20
>> Dave was an inspiration, and we all miss him. We=E2=80=99re reaching =
out to family
>> and close friends to see if there=E2=80=99s anything we can do to =
help.
>>=20
>> Dave was an inspiration to us. Dave=E2=80=99s contributions to Linux, =
FQ-CoDel, and
>> CAKE improved internet connectivity around the world for millions of
>> people. Because of him, millions of people now have access to =
reliable
>> video calls =E2=80=93 and in turn, access to loved ones, healthcare, =
and community.
>> One of Robert=E2=80=99s ISP customers is a kind paraplegic woman who =
lives in a
>> far-flung rural Colonia around El Paso, Texas. Her reliable access to =
her
>> doctors through telemedicine, and to her family through FaceTime, was =
only
>> made possible because of his algorithms. There are millions of cases =
like
>> hers, where Dave=E2=80=99s contributions have silently enabled human =
connection and
>> safety. Everything Dave contributed to the world of technology was =
free and
>> open source, for the betterment of humanity.
>>=20
>> Dave is the reason that Starlink was able to tackle its latency =
issues =E2=80=93
>> enabling a generation of young entrepreneurs across the developing =
world,
>> such as these young folks pictured in the Phillipines, to start their =
own
>> ISPs to expand internet access to their communities. Dave started =
work on
>> FQ-CoDel in part because of his own journey working to expand =
internet
>> access in Nicaragua, so we know he saw that his work had come =
full-circle
>> and helped so many.
>>=20
>> We=E2=80=99re incredibly grateful to have Dave as our friend, mentor, =
and as
>> someone who continuously inspired us =E2=80=93 showing us that we =
could do better
>> for each other in the world, and leverage technology to make that =
happen.
>> He will be dearly missed.
>>=20
>> *PS: *Dave is forever in our hearts and souls, in our routers =
and...in
>> production!
>>=20
>> *https://github.com/LibreQoE/LibreQoS/pull/684
>> <https://github.com/LibreQoE/LibreQoS/pull/684>*
>>=20
>> All the best,
>>=20
>> Frank
>>=20
>> Frantisek (Frank) Borsik
>>=20
>>=20
>>=20
>> https://www.linkedin.com/in/frantisekborsik
>>=20
>> Signal, Telegram, WhatsApp: +421919416714
>>=20
>> iMessage, mobile: +420775230885
>>=20
>> Skype: casioa5302ca
>>=20
>> frantisek.borsik@gmail.com
> _______________________________________________
> Bloat mailing list
> Bloat@lists.bufferbloat.net <mailto:Bloat@lists.bufferbloat.net>
> https://lists.bufferbloat.net/listinfo/bloat
> _______________________________________________
> Starlink mailing list
> Starlink@lists.bufferbloat.net <mailto:Starlink@lists.bufferbloat.net>
> https://lists.bufferbloat.net/listinfo/starlink


--Apple-Mail=_BEA54E9B-C798-4D1C-9E29-803C66BFC2EF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;">I didn=E2=80=99t=
 get a chance to know Dave personally, but sincerely appreciated his =
insight and technical efforts, as well as the way he just seemed to put =
out joy in so many forms. I have said multiple times that these =
listservs have some of the highest quality networking discussion out =
there, and I think this is in no small part a testament to Dave=E2=80=99s =
ability to bring people together and get them =
talking.<div><br></div><div>I would certainly be willing to help support =
or volunteer effort to keep these listservs running.<br =
id=3D"lineBreakAtBeginningOfMessage"><div><br><blockquote =
type=3D"cite"><div>On Apr 1, 2025, at 18:21, David Lang via Starlink =
&lt;starlink@lists.bufferbloat.net&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div><meta charset=3D"UTF-8"><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">He will be missed.</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">As a practical question, what is going to =
happen to all of these lists, etc that he has been hosting?</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">David Lang</span><br style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><span style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;">On Tue, =
1 Apr 2025, Frantisek Borsik via Bloat wrote:</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><blockquote =
type=3D"cite" style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;">Date: Tue, 1 Apr 2025 19:27:36 +0200<br>From: Frantisek Borsik =
via Bloat &lt;<a =
href=3D"mailto:bloat@lists.bufferbloat.net">bloat@lists.bufferbloat.net</a=
>&gt;<br>Reply-To: Frantisek Borsik &lt;<a =
href=3D"mailto:frantisek.borsik@gmail.com">frantisek.borsik@gmail.com</a>&=
gt;<br>To: libreqos &lt;<a =
href=3D"mailto:libreqos@lists.bufferbloat.net">libreqos@lists.bufferbloat.=
net</a>&gt;,<br>&nbsp;&nbsp;&nbsp;bloat &lt;<a =
href=3D"mailto:bloat@lists.bufferbloat.net">bloat@lists.bufferbloat.net</a=
>&gt;,<br>&nbsp;&nbsp;&nbsp;Dave Taht via Starlink &lt;<a =
href=3D"mailto:starlink@lists.bufferbloat.net">starlink@lists.bufferbloat.=
net</a>&gt;,<br>&nbsp;&nbsp;&nbsp;Jeremy Austin via Rpm &lt;<a =
href=3D"mailto:rpm@lists.bufferbloat.net">rpm@lists.bufferbloat.net</a>&gt=
;,<br>&nbsp;&nbsp;&nbsp;<a =
href=3D"mailto:bloat-ietf@lists.bufferbloat.net">bloat-ietf@lists.bufferbl=
oat.net</a>, Cake List &lt;<a =
href=3D"mailto:cake@lists.bufferbloat.net">cake@lists.bufferbloat.net</a>&=
gt;,<br>&nbsp;&nbsp;&nbsp;<a =
href=3D"mailto:codel@lists.bufferbloat.net">codel@lists.bufferbloat.net</a=
>,<span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:cerowrt-commits@lists.bufferbloat.net">cerowrt-commits@list=
s.bufferbloat.net</a>,<br>&nbsp;&nbsp;&nbsp;<a =
href=3D"mailto:cerowrt-devel@lists.bufferbloat.net">cerowrt-devel@lists.bu=
fferbloat.net</a>,<span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:cerowrt-users@lists.bufferbloat.net">cerowrt-users@lists.bu=
fferbloat.net</a>,<br>&nbsp;&nbsp;&nbsp;<a =
href=3D"mailto:codel-wireless@lists.bufferbloat.net">codel-wireless@lists.=
bufferbloat.net</a>,<br>&nbsp;&nbsp;&nbsp;Make-Wifi-fast &lt;<a =
href=3D"mailto:make-wifi-fast@lists.bufferbloat.net">make-wifi-fast@lists.=
bufferbloat.net</a>&gt;,<br>&nbsp;&nbsp;&nbsp;Network Neutrality is =
back! Let=C2=B4s make the technical aspects heard =
this<br>&nbsp;&nbsp;&nbsp;time! &lt;<a =
href=3D"mailto:nnagain@lists.bufferbloat.net">nnagain@lists.bufferbloat.ne=
t</a>&gt;<br>Cc: Herbert Wolverson &lt;<a =
href=3D"mailto:hwolverson@libreqos.io">hwolverson@libreqos.io</a>&gt;,<br>=
&nbsp;&nbsp;&nbsp;"Frantisek (Frank) Borsik" &lt;<a =
href=3D"mailto:frank@libreqos.io">frank@libreqos.io</a>&gt;,<br>&nbsp;&nbs=
p;&nbsp;Robert Chac=C3=B3n &lt;<a =
href=3D"mailto:robert@libreqos.io">robert@libreqos.io</a>&gt;<br>Subject: =
[Bloat] In loving memory of Dave T=C3=A4ht &lt;3<br>Hello to =
all,<br><br>We=E2=80=99re devastated to announce that Dave T=C3=A4ht has =
passed away.<br>&lt;<a =
href=3D"https://libreqos.io/2025/04/01/in-loving-memory-of-dave/">https://=
libreqos.io/2025/04/01/in-loving-memory-of-dave/</a>&gt;<br><br>Dave was =
an amazing man, helping the world with FQ-CoDel and CAKE, =
fighting<br>bufferbloat and trying to make the world a better place. =
Always willing to<br>help, and without him =E2=80=93 LibreQoS (and the =
other QoE solutions out there)<br>wouldn=E2=80=99t exist.<br><br>Dave =
was an inspiration, and we all miss him. We=E2=80=99re reaching out to =
family<br>and close friends to see if there=E2=80=99s anything we can do =
to help.<br><br>Dave was an inspiration to us. Dave=E2=80=99s =
contributions to Linux, FQ-CoDel, and<br>CAKE improved internet =
connectivity around the world for millions of<br>people. Because of him, =
millions of people now have access to reliable<br>video calls =E2=80=93 =
and in turn, access to loved ones, healthcare, and community.<br>One of =
Robert=E2=80=99s ISP customers is a kind paraplegic woman who lives in =
a<br>far-flung rural Colonia around El Paso, Texas. Her reliable access =
to her<br>doctors through telemedicine, and to her family through =
FaceTime, was only<br>made possible because of his algorithms. There are =
millions of cases like<br>hers, where Dave=E2=80=99s contributions have =
silently enabled human connection and<br>safety. Everything Dave =
contributed to the world of technology was free and<br>open source, for =
the betterment of humanity.<br><br>Dave is the reason that Starlink was =
able to tackle its latency issues =E2=80=93<br>enabling a generation of =
young entrepreneurs across the developing world,<br>such as these young =
folks pictured in the Phillipines, to start their own<br>ISPs to expand =
internet access to their communities. Dave started work on<br>FQ-CoDel =
in part because of his own journey working to expand internet<br>access =
in Nicaragua, so we know he saw that his work had come =
full-circle<br>and helped so many.<br><br>We=E2=80=99re incredibly =
grateful to have Dave as our friend, mentor, and as<br>someone who =
continuously inspired us =E2=80=93 showing us that we could do =
better<br>for each other in the world, and leverage technology to make =
that happen.<br>He will be dearly missed.<br><br>*PS: *Dave is forever =
in our hearts and souls, in our routers =
and...in<br>production!<br><br>*https://github.com/LibreQoE/LibreQoS/pull/=
684<br>&lt;<a =
href=3D"https://github.com/LibreQoE/LibreQoS/pull/684">https://github.com/=
LibreQoE/LibreQoS/pull/684</a>&gt;*<br><br>All the =
best,<br><br>Frank<br><br>Frantisek (Frank) =
Borsik<br><br><br><br>https://www.linkedin.com/in/frantisekborsik<br><br>S=
ignal, Telegram, WhatsApp: +421919416714<br><br>iMessage, mobile: =
+420775230885<br><br>Skype: =
casioa5302ca<br><br>frantisek.borsik@gmail.com<br></blockquote><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline =
!important;">_______________________________________________</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">Bloat mailing list</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><a =
href=3D"mailto:Bloat@lists.bufferbloat.net" style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;">Bloat@lists.bufferbloat.net</a><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><a =
href=3D"https://lists.bufferbloat.net/listinfo/bloat" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: =
0px;">https://lists.bufferbloat.net/listinfo/bloat</a><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline =
!important;">_______________________________________________</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">Starlink mailing list</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><a =
href=3D"mailto:Starlink@lists.bufferbloat.net" style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;">Starlink@lists.bufferbloat.net</a><br style=3D"caret-color: rgb(0, =
0, 0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><a =
href=3D"https://lists.bufferbloat.net/listinfo/starlink" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: =
0px;">https://lists.bufferbloat.net/listinfo/starlink</a></div></blockquot=
e></div><br></div></body></html>=

--Apple-Mail=_BEA54E9B-C798-4D1C-9E29-803C66BFC2EF--

--===============4404461747530225901==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4404461747530225901==--
