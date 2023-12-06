Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 43605807C94
	for <lists+cake@lfdr.de>; Thu,  7 Dec 2023 00:55:51 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 38A9B3CB51;
	Wed,  6 Dec 2023 18:55:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1701906950;
	bh=Y/ZlLkjQRnIX8rffu9ll9VhZB9zPnOMcODTWhwuAlaM=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=oA2XcJzrCTP9khNnfONkk8DHVdY67X7JKejWwFUMfVDxcEjnJiRJcq4W2u6dAO691
	 U2+HcBip55DYmL5Bto3jwe6A5x6LNchEKZ2/DRgTEwgi3hTHZ6m0+sMuDEmXuxoDKq
	 JSmZBtrszi8EpsswSJU3ZTbxFAtnjpXKCtSYoyaKKjYQBqsKu2oMJnGwPy/Xj5Bp/g
	 yKPz/hHJfwd8TtRW5tQzkDQ/bphPxZGwXI3plGHttlDBL8I+a8+NxxCbUMoeoxww2l
	 Ml4qTk7R9xB9ZRVNlT1yrIRC2beYt7wh2W9bRLm7x5cYPOnybKdNGgdXWYX5EAJ/XZ
	 eW+GHV5MfxidA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C23073B2A4
 for <cake@lists.bufferbloat.net>; Wed,  6 Dec 2023 18:55:48 -0500 (EST)
Received: by mail-pj1-x1030.google.com with SMTP id
 98e67ed59e1d1-28657040cdcso360240a91.3
 for <cake@lists.bufferbloat.net>; Wed, 06 Dec 2023 15:55:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20230601.gappssmtp.com; s=20230601; t=1701906948;
 x=1702511748; darn=lists.bufferbloat.net; 
 h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=8ioixfZXRdrOh6hBuj+IGCCPeUDF31MruhCzIBSvtPg=;
 b=Yz9qyVMFJlOmLKd7d6/7wh1EXTEUV91OMYs20L63BFCmXlRzu64v2XY5uBv1AT2DHd
 mXQUcxJX3QO+sAESVOuD7JzS+o3MXCteGR8q9jUJWXYVES7H+1lGXu9GjXtsM4GDGfSg
 a97U6L/g6QHwRY/pmm0lUdQG1sheF5MfyrOLycrc4ld+7R129w6Marmn9Qp0d8ceZxPh
 /h0AW2L0kqGagqFUTWTPpJMzmlgPBjHKZJSrMC/erL8BO1GSPOUFVDNJzPVC1n1HRWXg
 ZgBMWbxTQ24JxjDDhnlzEcxesncEKBDF5Rs8DOGhxUSP+h9/g98Oh/0vjs0hTyAUCGTe
 8BsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701906948; x=1702511748;
 h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=8ioixfZXRdrOh6hBuj+IGCCPeUDF31MruhCzIBSvtPg=;
 b=pXWjZruCBaVub3drCAvRIkv2alYtGTDGe7LIb+DGzaEzTmyzWzdNkefUhGQL8LgC8f
 PSUBQptG1Uci2YD2C1EJMwC8Cv58K7GEl8BzEl5pDm2vDYG5+VM1deZn1piKwoLR5W0V
 azBIw+9SmV4Qvpnytk3B9FxtMzQ7jNFm9ggANzu44jhPfh4IcEJuZ5+WonLCRtfBZlls
 pefREnfI8R36+wkLUddNzJ2WvxUsBOw3+LuEbCEeb0/MTk1CGxMPjQZ+x2F/UApIGkwQ
 8UzpFd0aj/ks2+1b4Gz3qA6TXwcNvN5WzJw3hJw32PY7Bgrj3jVM31GzHlQXsDPdA8dX
 QVpQ==
X-Gm-Message-State: AOJu0YyAlQ/CQZ8/Whq/yIp/U1jtaJ+1CTH+s0kS2xD9iXrN/Xo0MEnw
 HSyP2j4JOuu7X3CCgc1PPpc3aw==
X-Google-Smtp-Source: AGHT+IH4RBfMuZUIQDGUHTBkbgy1nx2Dp65ER39CnQABXNDh/8+Z4plHxRfGRvtVG/0D876wBT2R1g==
X-Received: by 2002:a17:90b:3b44:b0:286:815b:8c75 with SMTP id
 ot4-20020a17090b3b4400b00286815b8c75mr1449165pjb.16.1701906947681; 
 Wed, 06 Dec 2023 15:55:47 -0800 (PST)
Received: from hermes.local (204-195-123-141.wavecable.com. [204.195.123.141])
 by smtp.gmail.com with ESMTPSA id
 cx14-20020a17090afd8e00b00286c1303cdasm7303pjb.45.2023.12.06.15.55.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Dec 2023 15:55:47 -0800 (PST)
Date: Wed, 6 Dec 2023 15:55:45 -0800
To: Michal =?UTF-8?B?S291dG7DvQ==?= <mkoutny@suse.com>
Message-ID: <20231206155545.3ca3b2f6@hermes.local>
In-Reply-To: <53ohvb547tegxv2vuvurhuwqunamfiy22sonog7gll54h3czht@3dnijc44xilq>
References: <20231206192752.18989-1-mkoutny@suse.com>
 <7789659d-b3c5-4eef-af86-540f970102a4@mojatatu.com>
 <vk6uhf4r2turfxt2aokp66x5exzo5winal55253czkl2pmkkuu@77bhdfwfk5y3>
 <20231206142857.38403344@hermes.local>
 <53ohvb547tegxv2vuvurhuwqunamfiy22sonog7gll54h3czht@3dnijc44xilq>
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
Content-Type: multipart/mixed; boundary="===============2049050327775374477=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2049050327775374477==
Content-Type: multipart/signed; boundary="Sig_/alJaYiBnMbJbkGX8ASSTb5n";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/alJaYiBnMbJbkGX8ASSTb5n
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 6 Dec 2023 23:49:14 +0100
Michal Koutn=C3=BD <mkoutny@suse.com> wrote:

> On Wed, Dec 06, 2023 at 02:28:57PM -0800, Stephen Hemminger <stephen@netw=
orkplumber.org> wrote:
> > It is not clear to me what this patchset is trying to fix.
> > Autoloading happens now, but it does depend on the name not alias. =20
>=20
> There are some more details in the thread of v1 [1] [2].
> Does it clarify?
>=20
> Thanks,
> Michal
>=20
> [1] https://lore.kernel.org/r/yerqczxbz6qlrslkfbu6u2emb5esqe7tkrexdbneite=
2ah2a6i@l6arp7nzyj75/
> [2] Oh, I realize I forgot to add v2 to today's posting.
>=20
>=20

So your using blacklist as workaround security method and the name confuses=
 it now.

--Sig_/alJaYiBnMbJbkGX8ASSTb5n
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEn2/DRbBb5+dmuDyPgKd/YJXN5H4FAmVxCgEACgkQgKd/YJXN
5H4msQ//bQpRE8MaxhEFPjgk6hhxd+8VBX3AF8SYclV67kaBLPnORN58blvGFVpR
jt+gbHGMyENxE3KXzowiyHcYayDrBJz3IswSKiFZgGTFiUZegH6/mwpfEZ77qd9R
II5Lqwc65AJWOlLvCXICUhvdCrAbyoIV+Draa6QZAz3hYILjXfVgDbIi1O7WI0S5
EcoyKP49Z3+TvakdNmgIV/XPkPQrbM6ipoeeYT1VUBhp2crFa68ISSjkjIlqDIhw
324Px5bmpOWrQfHUjBZnWyPUZpseRfKMhnd1czTRa/mRIFsZRr77O8/2XFp7IdLN
AMM1SuvfWj5jv8MSlR58Jf0/Us30X0ng4xAYIMx9ySFTqFK0sHN/84bgBermd/q6
ZGGTQR6jeMJw9phnLF7DUfZRlgs8QnqJ6KoddTyI7mF7yMbVpTvyT5EdWxEf5duY
IQf8b/ULKjsUankcEKQVM0hseAMEj0VTstA8bYiOpsrXPJGNenvOlp90E3hl/pBv
pM2Em+CpsJBabfXfwDqV9TcgpA8oCHgcuI+oDjJhY5PjIWT7+obMQSDpILntdAIM
UU28U81t1gl33s8XKcpNDGW9KUJv6j0/CUPX91FkWArt6DgF8zvbMGkICgndTHJT
6tBF/6G1G0mCvpdRPm133mx8j0SAA6dnJJvKM5fUjPikplpDoQo=
=Lgtk
-----END PGP SIGNATURE-----

--Sig_/alJaYiBnMbJbkGX8ASSTb5n--

--===============2049050327775374477==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2049050327775374477==--
