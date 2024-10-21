Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 51AFD9A728F
	for <lists+cake@lfdr.de>; Mon, 21 Oct 2024 20:44:05 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9E9C13CB42;
	Mon, 21 Oct 2024 14:44:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1729536243;
	bh=Wgd3AdeX/3uZIOSr/JIT53jJHPXDJhDlIR2Ln5t61P4=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=QB+Zf8tRfF6lGS0vfPFt5xEeYEIfUDiEGsI9TcMvQVmB2SXbsumZTFdKVUl60Bf8g
	 hg4tBkVvZ5U7iyUq+9ARXnAwVU+03HIIF5QdpN1sQESsSJmrXTr6aC6OQtXqO2ssPZ
	 HvZ9P6TdntI/msP66iEIx5DBrXtrsc7XObm7+AU2H9mE9eV5UYFmOE9OSW8syW6CTt
	 x8ed8iPD/9qceMSAurqcbwPillkryM9qTu7esV1LaoHuGuLiepqC9sSHKUDh+MAgPB
	 1sOf8EnED3eVitaMXCUSO+DJ7pzD2goxHdOe7CkJxfGgrS4pkqFl0JzEAbdgAQA+3u
	 XXvF2eeDOjhVA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id AF5C23B29D;
 Mon, 21 Oct 2024 14:44:02 -0400 (EDT)
Received: by mail-lf1-x136.google.com with SMTP id
 2adb3069b0e04-539fb49c64aso6743458e87.0; 
 Mon, 21 Oct 2024 11:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1729536241; x=1730141041; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=G5JsySsS7n5DNq6F2uNLH/pFCgF8iHsFKs9eYghxSNY=;
 b=B86p4XJqXHP3POy2izgaEj72JRutxVMofEZB5CW9u+1NPFJTHEJxbIUdt4yEXYRqc8
 2TK9xOqc0HRXthLZwNwyXXsRGPlVQDliIT0qHwyepMrKcxE5YgqSZbxwWV9cF3jcj9wh
 XRb2S7HNIkTDD1rHcSvUhmTIXId8z+qr7/o4tgFnnFUcBBHf8YGcTdT4pv0KtRfkp20Y
 Xn8HMQ3h6f32XlWPCPEkUlDcfPcCK5hXE96+v/vTWQPZepVTw0OTP+qQ6vlrz/QB76om
 uNwaGDJuvzsFcNMMcQRILACZ8Z77gTz/KCyQYR+Q1JcpkI1MwK45MFH5T7whQiILUn/Y
 Fy6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729536241; x=1730141041;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=G5JsySsS7n5DNq6F2uNLH/pFCgF8iHsFKs9eYghxSNY=;
 b=oNvt5DCliFr16guzt3M8AF1+3IEw4oe/UWDtV5CPtDZeQN6IOd9MArwmD71bx2wfBE
 q/aji0sEy+GCRNQyDkjwl6ZFYxJjwW4DiMTMDMWoCUevgc6RX3u3uFJ9ZUiYQpArjWvo
 3aBhMASgDQI+867+cGojTd00TCS9iK6Xd4HF27LiRPbbjEFiWiXMj0qyGZEVnrUOyKIN
 Y2wTWSSydNJPxVtb0+KMzddbb6zEq+TwfRjve+aC4teDuwgKf+dN9HNETrBDFPTaIJhT
 8CXXLn3G3rRnc6UsNWf0v/ofFpjX5E1vfrH9FTaeWdnD0YVcU7iWywwLPG2lQ+jAVFV3
 wNtQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVLavJ6qPmM2GS0gd2HS7K5nPb+g254kjo/8+gioIs06xGTbUN6NFiHCFAeWKM03hYgU5xw0A==@lists.bufferbloat.net,
 AJvYcCVQTja2axLLnE6O3xUckH+xPmzH4CqfnHxJni8mVxqCx+ByiTcIPSrhcuchMv17r2XPRXoiZNWYeY1TEVEfldM=@lists.bufferbloat.net,
 AJvYcCVlh08eALYfuiQB7LeUjYmanfrtgmlNNyg7qpE2frjw+AK9dnMa7Y8IZv/taLhq+iaYuTj8@lists.bufferbloat.net,
 AJvYcCVqFPYddhfwnzafb7rWX88NNrS8ewgbyU9Nifh0qV39vw/l9ErUIWvXrzYld4+sHZZp49FX9Q==@lists.bufferbloat.net,
 AJvYcCWz1dXXtqmfGZxOdyNACTsn/RDfjYuGMRiImG+CJCNfWo73j9zIIQot/T+vBwmdnd45qky5tEjr08U=@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwCSVYX4TgCG2B5nnNH/InJQqSaDcLvOmR/iYZrQUhJKPYrxUxK
 vyXB1ICdS9NMvx1nEOt2tHaeDlbDoZm8KUKj8n2gJTlmr+3LO+/D7Ph7pMKeMKKTcOZaHxVbqmC
 OtYoy7l3jy48rE9p4F5/EpvLd4XP17PNRF9nGew==
X-Google-Smtp-Source: AGHT+IH3Awa/yl6w+IBLBzUWiovhMG8I5CTSUDgD3FQmyTwfZRLhzu7KkyF211obm+F1A3b4SID1v31h9fNGUa7IOpg=
X-Received: by 2002:a05:6512:1294:b0:536:53e3:feae with SMTP id
 2adb3069b0e04-53a15340876mr10867186e87.11.1729536241089; Mon, 21 Oct 2024
 11:44:01 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 21 Oct 2024 20:43:55 +0200
Message-ID: <CAJUtOOin11BQ+HCd8WX34HqEV6muATXj8VVJavy0hHqaoyJoOA@mail.gmail.com>
To: libreqos <libreqos@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, 
 bloat <bloat@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>, 
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>
Subject: [Cake] Dave Taht @ GOTO Chicago 2024: Tuesday Oct 22 1:40 PM CDT
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
Content-Type: multipart/mixed; boundary="===============0803026218402747611=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0803026218402747611==
Content-Type: multipart/alternative; boundary="00000000000046c84f06250109c7"

--00000000000046c84f06250109c7
Content-Type: text/plain; charset="UTF-8"

Hello to all,

LibreQoS' Dave Taht will be speaking at GOTO Chicago 2024 on Tuesday,
October 22, at 1:40 PM CDT

https://gotochgo.com/2024/sessions/3379/reducing-latency-innovations-for-a-faster-internet

Hope to share slides and video with you later on.

All the best,

Frank

Frantisek (Frank) Borsik



https://www.linkedin.com/in/frantisekborsik

Signal, Telegram, WhatsApp: +421919416714

iMessage, mobile: +420775230885

Skype: casioa5302ca

frantisek.borsik@gmail.com

--00000000000046c84f06250109c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello to all,<div><br></div><div>LibreQoS&#39; Dave Taht w=
ill be speaking at=C2=A0GOTO Chicago 2024 on Tuesday, October 22, at 1:40 P=
M CDT</div><div><br></div><div><a href=3D"https://gotochgo.com/2024/session=
s/3379/reducing-latency-innovations-for-a-faster-internet">https://gotochgo=
.com/2024/sessions/3379/reducing-latency-innovations-for-a-faster-internet<=
/a></div><div><br></div><div>Hope to share slides and video with you later =
on.</div><div><br></div><div><div><div dir=3D"ltr" class=3D"gmail_signature=
" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"=
><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><=
div dir=3D"ltr"><div dir=3D"ltr"><div>All the best,</div><div><br></div><di=
v><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frank<u></u><u></u><=
/p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u><u></u></p><=
p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frantisek (Frank) Borsi=
k<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u>=
</u>=C2=A0<u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><=
a href=3D"https://www.linkedin.com/in/frantisekborsik" style=3D"color:rgb(1=
7,85,204)" target=3D"_blank">https://www.linkedin.com/in/frantisekborsik</a=
><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Sig=
nal, Telegram, WhatsApp: +421919416714=C2=A0<u></u><u></u></p><p class=3D"M=
soNormal" style=3D"color:rgb(34,34,34)">iMessage, mobile: +420775230885<u><=
/u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Skype: c=
asioa5302ca<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,3=
4,34)"><a href=3D"mailto:frantisek.borsik@gmail.com" style=3D"color:rgb(17,=
85,204)" target=3D"_blank">frantisek.borsik@gmail.com</a></p></div></div></=
div></div></div></div></div></div></div></div></div></div></div></div></div=
>

--00000000000046c84f06250109c7--

--===============0803026218402747611==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0803026218402747611==--
