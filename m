Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D10807B53
	for <lists+cake@lfdr.de>; Wed,  6 Dec 2023 23:29:05 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1080A3CB4F;
	Wed,  6 Dec 2023 17:29:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1701901743;
	bh=4g4hTmuUXqa4xezblpBD8eLSotjTj3uasYFWvWiG1Rk=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=Uv1eELX29fiMaO1aXwf/lI/qmHlU1HAbyaCTi2iJbyeH+y4YnWnYUWyaz43L3xeKJ
	 A5V/NpqG4q8RIlFke8GMYaFZSP6g7y4/vVfXkqP7mS1Cdac6nC10f2+gUizKsKnyHd
	 lc8+8bImhWXMNa2U735Waj6jCFbtxr19p+2l1o6GAQS1aYMXfFmYEBo+MKNj9bcAeh
	 Uw8eCvB0OKo4lQxL/edU0D/oEJSU1QUlYu1o8NKAN6Bn2Gd9i0LllWCF7baU7jKlk2
	 +7RcLAUYLEN5gtK0kAai4pL9WNXBpbfi4AGt1Sm7CyBxiwxRRqjvIKk6c7KA3UCEMy
	 JU9/7vY1xptTQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 70BC53B2A4
 for <cake@lists.bufferbloat.net>; Wed,  6 Dec 2023 17:29:01 -0500 (EST)
Received: by mail-pl1-x633.google.com with SMTP id
 d9443c01a7336-1d0897e99e0so2126835ad.3
 for <cake@lists.bufferbloat.net>; Wed, 06 Dec 2023 14:29:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20230601.gappssmtp.com; s=20230601; t=1701901740;
 x=1702506540; darn=lists.bufferbloat.net; 
 h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=f/l6Rr9GMTmqW+sTOII/IEKtjg7NaSJo/S0s3iJkJlg=;
 b=TefV+3BpCjEKiQqVVLrmCzOLxKUpoQsK4EvfYTW/mieG2LhG2Fx0GqEUCc2z8TjlkW
 YNYFYuo1pJ58lkv+/U9w9fUJ19QHKcQ5mjZ5SXJelK73qdIw1UZ+OY52RaaQKJc+eM/C
 I+SALfZ3g9WqgrmOypx6I5J4Ot31e2TBrR/ZZhszlrRcB0rBJoOM+9E4uZPBX+FrJfV2
 bD6tbcUE4Q5YqU8g91+xLl3DfZ6Nl3s90zRFjcY8Eq0G4EqAAbeyaDDM5EY4ydO90Of9
 e5uiyvgYB4uqOVCc8kDVFrQO+vvBI/OSb0NwyxXfwEmyBDcgEmVS2IheiCVDOyCxtUXY
 DfcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701901740; x=1702506540;
 h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=f/l6Rr9GMTmqW+sTOII/IEKtjg7NaSJo/S0s3iJkJlg=;
 b=TgRRXCrDBM2exaIteJsE2wIAvVaPjhqKzvTaFr8bnQs0Mcc/rTKD3q8Dy+RCVPyutE
 S5diiY3G0SXImuCXWndxFuJHpPS0jOwzbbypdqAALCY6ys+a9vJCIp68yPOTcdiGweRa
 6l5H1wwileewbgkDIz39mjAS0rTxOqbyuqTKrZVIqHdrxhg4HgiJ3fVf+n5BbBZxNDKi
 PDkIRqChZsxX28GuBnF7QMKfGfm/vuDjC6ExQVxe2xz1blL5X4f3NC8mGftjvWJGtr0z
 QFvfKlMukBTC7nv4g57fVQA8P76aTibCe/cMc320c/8x3aDCzshXt3FgTYrsCG0S2XWx
 Wc5A==
X-Gm-Message-State: AOJu0Yx5kIOCxhkGKRN3Z0Bf+H8Uga3PuBami6ScJQQLnMDAudr3jCNm
 X6OXzOAfADRdIHwNP8JY8yzYow==
X-Google-Smtp-Source: AGHT+IF4uW9bK6yyANxChBWzaE1Y3zrx+2hRhaqcc+9gMpyrucm57mySnQFhCzjnEOUn+tcgs4FTLQ==
X-Received: by 2002:a17:902:ce8d:b0:1d0:c41b:1d0c with SMTP id
 f13-20020a170902ce8d00b001d0c41b1d0cmr1215417plg.75.1701901740213; 
 Wed, 06 Dec 2023 14:29:00 -0800 (PST)
Received: from hermes.local (204-195-123-141.wavecable.com. [204.195.123.141])
 by smtp.gmail.com with ESMTPSA id
 ix11-20020a170902f80b00b001cfc1b93179sm305347plb.232.2023.12.06.14.28.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Dec 2023 14:28:59 -0800 (PST)
Date: Wed, 6 Dec 2023 14:28:57 -0800
To: Michal =?UTF-8?B?S291dG7DvQ==?= <mkoutny@suse.com>
Message-ID: <20231206142857.38403344@hermes.local>
In-Reply-To: <vk6uhf4r2turfxt2aokp66x5exzo5winal55253czkl2pmkkuu@77bhdfwfk5y3>
References: <20231206192752.18989-1-mkoutny@suse.com>
 <7789659d-b3c5-4eef-af86-540f970102a4@mojatatu.com>
 <vk6uhf4r2turfxt2aokp66x5exzo5winal55253czkl2pmkkuu@77bhdfwfk5y3>
MIME-Version: 1.0
Subject: Re: [Cake] [PATCH 0/3] net/sched: Load modules via alias
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
From: Stephen Hemminger via Cake <cake@lists.bufferbloat.net>
Reply-To: Stephen Hemminger <stephen@networkplumber.org>
Cc: Michal Kubecek <mkubecek@suse.cz>, KP Singh <kpsingh@kernel.org>,
 Song Liu <song@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Stanislav Fomichev <sdf@google.com>, Yonghong Song <yonghong.song@linux.dev>,
 Petr Pavlu <ppavlu@suse.cz>, Martin Wilck <mwilck@suse.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Andrii Nakryiko <andrii@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jiri Pirko <jiri@resnulli.us>, Jamal Hadi Salim <jhs@mojatatu.com>,
 Alexei Starovoitov <ast@kernel.org>, cake@lists.bufferbloat.net,
 Cong Wang <xiyou.wangcong@gmail.com>, Hao Luo <haoluo@google.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Pedro Tammela <pctammela@mojatatu.com>, Jiri Olsa <jolsa@kernel.org>,
 bpf@vger.kernel.org, Martin KaFai Lau <martin.lau@linux.dev>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============3831292301972583796=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3831292301972583796==
Content-Type: multipart/signed; boundary="Sig_/eEONBPhTWRmcfcuKyiwe6pZ";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/eEONBPhTWRmcfcuKyiwe6pZ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 6 Dec 2023 22:18:25 +0100
Michal Koutn=C3=BD <mkoutny@suse.com> wrote:

> On Wed, Dec 06, 2023 at 05:16:28PM -0300, Pedro Tammela <pctammela@mojata=
tu.com> wrote:
> > Can't you just keep the sch-, cls-, act- prefixes for the aliases?
> > They look odd in the current patchset TBH =20
>=20
> I'm open to different better naming.
>=20
> Although, this natural option would clash with the behavior
> (modprobe(8)):
>=20
> > there is no difference between _ and - in module names =20
>=20
> Thus blacklisting via an alias vs not-blacklisting via non-canonical
> name would contradict each other :-/
>=20
> Michal

It is not clear to me what this patchset is trying to fix.
Autoloading happens now, but it does depend on the name not alias.

--Sig_/eEONBPhTWRmcfcuKyiwe6pZ
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEn2/DRbBb5+dmuDyPgKd/YJXN5H4FAmVw9akACgkQgKd/YJXN
5H47pA/+M4lxqb/IvlgJPzS8zJ6TBstZrVncp/IqsyJhWEf8EQPg139zasxJQiz/
PQn2bADBEqQ6c9Um8MTP4GHukWU4SRp1JiyKZxkMdabB0De7wZSUUaaFi78Y5nOu
qCpPePt9RHGgZIqPogjOJRpGl52H4Qaypieq/pg845n3DtVi6jSLa/fJc0AWmVfj
8mbXT+Uv5jRpkVOTlri+nZ+QBoJ+CEO8kUM7jQynI6hedJGbD9QHghOczxYNbN4D
UBmRNiL1ewfoH2uTH4IRSnHa3TMXv7iYMzlfDOmW1G8TTpm/6tYJ2eYArLeoRyG0
yTFbH+RZ0WCSdHcFYJG32NWV4BoikjhoBALhzYjLnxKOqck3xvHfkrf7P8WPLmRo
h9o6AuIb8ahsgYnghkuYdOhUYmijj4Fr8UWjmX1xQKPqwvTN0/6yYqikDAgh9rQT
sCGFZfbrRF8mlIG0B9KnKL5131AjxwAmrLbcLzsC6OkbgkpBsPpgunOMoCHYR/9E
84vnorBr+imly0obQ21of1yNAJ2D4JBoBnX6dnY3bHfA/jPWTwrPJKMjX8sq1XRD
3ajxlIdpmzVqWUdqpvoW4ku3vLLRh1bG5RI/WC96hzX1FAIV66G2rI53f22+P499
5Bdre8yF1LpeEceSjgU5YgWF8vSo39k+Qa6c4gm9JZ2BXvRTACo=
=L6hG
-----END PGP SIGNATURE-----

--Sig_/eEONBPhTWRmcfcuKyiwe6pZ--

--===============3831292301972583796==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3831292301972583796==--
