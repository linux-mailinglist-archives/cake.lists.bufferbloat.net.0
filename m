Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD744112AA
	for <lists+cake@lfdr.de>; Mon, 20 Sep 2021 12:10:39 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6B28D3CB49;
	Mon, 20 Sep 2021 06:10:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1632132638;
	bh=95ekcXpPsQBcj3BW/rHdFmXbg6DWPGPIw+yL9EGkYWI=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=em/Qw2e4w8CqPKM8FYDZfkPCG4MH61Op3yrJ/4s/UFAPMDKxh9oTG+UfRwRXXPTII
	 2Bkw4juUN1c5uLgrLX3M1Rlsz00kiyitbg1LPIr1BUBH5j3r2PKqGk+FWGbFfTZcnX
	 AXtAzM+9uwfcqHrzbSBvubiy8CdNcZ6B9lulbav1IjzDKKH4WHcd+R6Ks1Ob1aoupq
	 dceSyejC+6tIPMLPY2KumP+hu2SJflRBr3nAbQSKvUQEx4yTs5ssuybQBq24AQ2MjP
	 dZ5fi/aYMOcpCoJPPxO4EHzZ+3Iafo3QgxmVkXjVpDxu1fjJYLnUQTrJGe078gGG3h
	 jOIRDkRDBn4ig==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com
 [IPv6:2607:f8b0:4864:20::835])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4A06A3B2A4
 for <cake@lists.bufferbloat.net>; Mon, 20 Sep 2021 00:00:25 -0400 (EDT)
Received: by mail-qt1-x835.google.com with SMTP id u21so14361062qtw.8
 for <cake@lists.bufferbloat.net>; Sun, 19 Sep 2021 21:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vt-edu.20210112.gappssmtp.com; s=20210112;
 h=sender:from:to:cc:subject:in-reply-to:references:mime-version
 :content-transfer-encoding:date:message-id;
 bh=d0jMoS3+MeRD4UZDeAWAAmRn9AgdzUG7ia9O66hd1co=;
 b=mzjKNJ1ZQCGndq3VFhRqGR+C4uSm/Fzs5GYWP0v/bqvCAIwiy8WH8pJkkgxOyRf4Gy
 gAt7yev55aNzo6N5Axu2J5ztgjKoLpNGmqm/mk1jEkNi8LlZk44sA+aNzzuQlrx98RPB
 vKr6hGn6hv6hecwfBgCxomHLUkR/04MP5rRjD254+m2uw5UQHQ19nrkQXceYFmYeGR2B
 U+Hv+IFfOWteHnOZixndpqjpgyxZlqvU0Hq+uUgo7gmZNACWjTLq8pNXQIUUcJRckWdE
 QvRi7xfk1DRFnGrk/PCS90bZXIhkHPW23gAUftx9rb/4bH+Ad2WiMijCX7lzNu8CURGS
 desw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=d0jMoS3+MeRD4UZDeAWAAmRn9AgdzUG7ia9O66hd1co=;
 b=Mn38xlk7OqtDIEplFxMv9N+gnE4vSorHtw2fh9SNOZTOP/8Sc0spykgmPmXBYPzXSk
 ZfUS/2HszI6Xl5ebZAx9bSsqSzS5/dVwVzgOON65en9Hag7vCPrQje/QzvXfI5xFaCx0
 E294pl/7k7c5jqQKih/DVXpPiUth40oOR8jcK94JFreLw7mzjGrzYbZYwqCZQuqE+wtc
 6Q5/ssatS84ePFRze60yjUVn/ik82hT3KUiJaiy33GS5D6odmdgWotVSGW9tXfw+FJ3C
 WH3cj40AJ1siT+p31I2kAI9W0QAInDNs6PMI2bGyKVyLuFDJjbMO6GIm6v5TaZjTb9B8
 ekWw==
X-Gm-Message-State: AOAM533J0ENSClNZ8hYHGb1jG1uqulId2ZxcUSYxrm40si+XN6jvgzbe
 kqhGr8y1pGTMYvhUhak8Zm+rkw==
X-Google-Smtp-Source: ABdhPJzmIgzwbtS+3epaVAzJPh+GQDm3WTqSvtmeK5g4YobJFtYpARrhaxfvIlQ+JbvlT+Mqnf0uBw==
X-Received: by 2002:ac8:5796:: with SMTP id v22mr21046274qta.373.1632110424757; 
 Sun, 19 Sep 2021 21:00:24 -0700 (PDT)
Received: from turing-police ([2601:5c0:c380:d61::359])
 by smtp.gmail.com with ESMTPSA id p12sm2016102qkj.54.2021.09.19.21.00.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Sep 2021 21:00:23 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.10.0-pre 07/05/2021 with nmh-1.7+dev
To: Dave Taht <dave.taht@gmail.com>
In-Reply-To: <CAA93jw5QyH4SqKT07hP+skijfimZ0GU=AgLJtkVOQGzKrAkazg@mail.gmail.com>
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <1625859083.09751240@apps.rackspace.com>
 <CAA93jw5QyH4SqKT07hP+skijfimZ0GU=AgLJtkVOQGzKrAkazg@mail.gmail.com>
Mime-Version: 1.0
Date: Mon, 20 Sep 2021 00:00:22 -0400
Message-ID: <257851.1632110422@turing-police>
X-Mailman-Approved-At: Mon, 20 Sep 2021 06:10:36 -0400
Subject: Re: [Cake] [Cerowrt-devel] [Bloat] Little's Law mea culpa,
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Leonard Kleinrock <lk@cs.ucla.edu>, Bob McMahon <bob.mcmahon@broadcom.com>,
 starlink@lists.bufferbloat.net, codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Ben Greear <greearb@candelatech.com>
Content-Type: multipart/mixed; boundary="===============7819616996393038126=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7819616996393038126==
Content-Type: multipart/signed; boundary="==_Exmh_1632110421_88012P";
	 micalg=pgp-sha256; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1632110421_88012P
Content-Type: text/plain; charset=us-ascii

On Sun, 19 Sep 2021 18:21:56 -0700, Dave Taht said:
> what actually happens during a web page load,

I'm pretty sure that nobody actually understands that anymore, in any
more than handwaving levels.

I have a nice Chrome extension called IPvFoo that actually tracks the IP
addresses contacted during the load of the displayed page. I'll let you make
a guess as to how many unique IP addresses were contacted during a load
of https://www.cnn.com

...


...


...


145, at least half of which appeared to be analytics.  And that's only the
hosts that were contacted by my laptop for HTTP, and doesn't count DNS, or
load-balancing front ends, or all the back-end boxes.  As I commented over on
NANOG, we've gotten to a point similar to that of AT&T long distance, where 60%
of the effort of connecting a long distance phone call was the cost of
accounting and billing for the call.









--==_Exmh_1632110421_88012P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQEcBAEBCAAGBQJhSAdVAAoJEI0DS38y7CIcKHkH/2MFtpJcJTqa8yc5mH4TPTpc
9ruIbUsClw6KiFjdD643ajpXIMHEAmmdEj05rleJ8DzdUKe+VDt/G1poFD5sPbc9
OVc3rIG9juKUv0aDmxS+NSD4GeVNbGVXqDJ3EuuN34ed/WK8s0Q3+KuiFNNzOuEj
8o0mDlG84k/s2XUhFnMXx7Rv/tEgZw1m/CuAfMb3j02w6iLVPANyCujGnr9/Fk2j
zY76JiVd/WO8NyoBeA97ELsSsCAk2AH9eFFzFtrtx8NaBhV7dnCA5kcDVi0emtAi
mUWSLjO7Ds0tv7zVKI1PNPVogPgQCJRfT7c8q/O5STPW7/otUh7+x4yQeifBCP8=
=EBvE
-----END PGP SIGNATURE-----

--==_Exmh_1632110421_88012P--

--===============7819616996393038126==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7819616996393038126==--
