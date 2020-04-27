Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FCA1BA2F3
	for <lists+cake@lfdr.de>; Mon, 27 Apr 2020 13:52:45 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7732A3CB40;
	Mon, 27 Apr 2020 07:52:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587988363;
	bh=Sd4SIDkb9GKSt0K+RNsrcWLOHvRFmHMyUNEeP1nEYuU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CaylPh5YQcRzVd27bt57Tv5iNyzowZKd/MMY7EzLsfapbsVN/+cbnVBVgvfXKY02r
	 /zRUtG8csDmyb2nfy+aGWQfkpZHC06KnA/mBuH+W9xzsBYp42EQ+1rEPhDuNME/w/b
	 G11GeeNUHpN/pUyK856T8CPaD2Fj2Vz2vP6Jlq0tU3OxQJ08wP9afK2zkX/CcRI2TA
	 q8iSCyRkZiOm4APdXNqKOCD3ECcejTHTGMZqamB1p6RNuM8RkYGhgvss/jV+jx8Bz4
	 eHyWGJtUm+gdP6qQxBM6+k81WMuiyLkjsiR5WWDAts5r0hFnVLSgkk96FUQojqp7Bs
	 vr+AqX408yx8g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-eopbgr60057.outbound.protection.outlook.com [40.107.6.57])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 359D53B29D
 for <cake@lists.bufferbloat.net>; Mon, 27 Apr 2020 07:52:41 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JbaZPuKujlV2amQ/s9V42tWBIhoNA0CmVZ+tA+NwnW7mVAk01X0RdK2nla+MTtatnztzNFvIKeXZLbwuXzMB4HCeE5xbJo1o2oPNIKw/COEzUgEiNEm3DrtOHIm3cR18W4gtvc539/kXmlzxFRpsJ+wugnI8kPNaGp2Wv1ZuH1p7jsz/eCiF4Ef6hfUjd4OrR23OuYNoKrSuNLMN1x+ECSDsS5Su/sRFmIJSZNid2pGRfk9JG5D7DzwpbtkLSWqoJ6vGVUv6/FcP424MSu6+IN8gF7lwLwM1m4cJhiC/3vpNTiW0IueuUfEYQg65ZyVkJrMn8QgnTokoM2oIIUPfgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5nRELUhUTDXFb6MUn38xssU78YI358gSSHY3EEih4A0=;
 b=fuTk0/4CHuN1a/aSOCm1zZiUdfwNGBvqvg5J4wcPI6TunC1eorXiXEZ7BskcGMEd3rloxdgxfJ+n7RT3ucOq5lPmn/qfioNoBoy8xTQwFbh58n8ZsP9pCmkWjhnvtQJdwK4DiAg7BLCWMNEsCClltgn+1lXcrOh71LlF3RexKFjbKEedUKCkSW5UcXI7CifExavctx+MaSnJXgqegjk8Gjl9QDkwzO/RWzPkhecrq1J3Gzbxybl+pbioGxADjw2JUHmjlvfQ0U+uYdeAtz+i9AfjuFYrA6GqJKhkqrVNIhFL9yB5FdoJ5LEMBNwyh3BlcylIM2VKQltJ+vLgmN4M4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5nRELUhUTDXFb6MUn38xssU78YI358gSSHY3EEih4A0=;
 b=WX+CFnRVHIha7AHkcx8UtT/Y21t+MOghs1fKhjlPmBMCGty7HnbyS/tOjXEhQBdpJXq+NkxXjj/CBPsGpua2g3ENuC+eOljdWZAFCLw2RuPL6cwocouhEuGETookTvT27ufws0zui4tWdYy8IxiA6QazIlte3wwJhqqp1pEozIU=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB4254.eurprd03.prod.outlook.com (2603:10a6:803:56::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Mon, 27 Apr
 2020 11:52:39 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2%4]) with mapi id 15.20.2937.020; Mon, 27 Apr 2020
 11:52:39 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: "David P. Reed" <dpreed@deepplum.com>
Thread-Topic: [Cake] Cake tin behaviour - discuss....
Thread-Index: AQHWGvGmvsYI2khSOkWkfQsfjOsk4aiJ9aKAgABWX4CAAAYTAIAACdCAgAESb4CAAXB7AA==
Date: Mon, 27 Apr 2020 11:52:38 +0000
Message-ID: <D2008410-83FC-42D4-993B-612B23CC54EF@darbyshire-bryant.me.uk>
References: <62228545-5DE2-4600-A9BB-52D891FF5AD4@darbyshire-bryant.me.uk>
 <4D896254-FFB2-4CEB-B596-A6D2E510243C@gmail.com>
 <32DE972A-3359-462A-A12C-77714B2563F6@darbyshire-bryant.me.uk>
 <1587848186.866926178@apps.rackspace.com>
 <0AA356B0-AC91-4F4E-94A6-184C3E090FCA@darbyshire-bryant.me.uk>
 <1587909227.334329276@apps.rackspace.com>
In-Reply-To: <1587909227.334329276@apps.rackspace.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kevin@darbyshire-bryant.me.uk; 
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: afe4220c-a115-440f-d72e-08d7eaa17c40
x-ms-traffictypediagnostic: VI1PR03MB4254:
x-microsoft-antispam-prvs: <VI1PR03MB425477E4895DF983AD0691F3A5AF0@VI1PR03MB4254.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0386B406AA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(39830400003)(396003)(136003)(346002)(376002)(66556008)(86362001)(64756008)(66446008)(66476007)(8676002)(66946007)(2616005)(91956017)(76116006)(33656002)(66616009)(6512007)(316002)(54906003)(4326008)(6916009)(53546011)(6506007)(81156014)(99936003)(5660300002)(71200400001)(508600001)(186003)(6486002)(2906002)(8936002)(36756003)(66574012);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rZNiXhh6+H7MsaxSMZXCf/mXIx3csp7RkmePMah+mys0lvFUUpEjc856w7kwPEkS/Rv3UYSUbloq7qXMWt75+UOr1kCIWQkcN83mOGWuXPgpVnFsKCcowS7vEwH07AKlo+jKaI3Kzq4tXSiQagYiH1jeuBIowlzGuAc1MFl5tg3HdyDRF7sMsXq5PudNQR9rSuqU/GIixLQrEQtLp0YEtliklREn0H3rABRrzZY6QukAyTIlgWLroi9U4COQOSTYwwxEGriMxpnpl4E2JwCXGZWvSZXzWXmgfa6TH2o0w0KsbKdaOGXVv6PqOQzUVe4gVBUSz+Ple/nbTeQCQTVJHZ0DOmVXO5avnjU7IbGZjfzqWPMiQZe5AwTyIFfC4vdD3QMyz5kISxvID8418qqrdbKzNmSFFFX14lOWwQlSnzHFmr+Wx/lf3yc8j5EsrkkE
x-ms-exchange-antispam-messagedata: IXeEMLdaiIt6+gj3NH79xb3o17n8DEL2+lglLB9iA6MoBeSuvJ6gBvREB21QSG++2mP9w1MErhsI61Yvt6ILyurxw3YvDT5MImxIwY5yn3ydTXbe9fRLn9fFlYmsue2vAGLeruG5m37EO08EFbSgR+jwnBVhm8sctPenUEaXyKVyP/0T5MAtCbrvlEJYLpHX6N19Kibzhk+xEPHWJelCMdAZadKQqi5M1x02A+0a2J+IVnacjjMhx3z2CToCLikrfPH4GB8Fy0HpQv/KVkOXyEUjPLsb3eOQYIJGUQCfZWXrcCD+eD1xQ4fgfmVJ3I4hCKjIkQNWVTFB3+Nd9gRlF73u26gOHo8toqmw6jwJQeQ4UjnbQ4lKn9cd3Hpiz0X2m4fDgen325wuiH7/k5jikt6E7rTd8aaTvDRIquHKYRotsHO1ulKAOIBKUGDun7/4sfaeRQHZkNTYTBCosi5um2V9st5zQFNhVdGJs2Z59p/BgC0H4ZhmI4HXiQ1mcgqK6R+RWE2fyZZQuc7gr0rXA+frDPr+jpMasdGg2uIVVlWuklA+O8ggP+DER0TahXqS6NUNpMnqbGVb+yX45LZs+tATW9mMpkqHtnqbaKNuhjrFFxuJ55mZnZKop8Q/lB+8Tpv39VCTj1aUeCvibY5zeQiJ4TB7q0lcSoPpESNf4X7sWjHp4hDrFk1HFnBlA51seyhLlZEaed0Rl/Ut8hFLnC8tfZn80viF6HkXRB5d7hiAydvCsKkALo1Wsg9nmfvLVFthU5TO4t4q4UZYIjLPN9KZRp7ys5Ju6SLZ4scSL/FTWL03HGHoLj/ocSKZiQOqhtrVTavCRfuG7n840XP7WQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: afe4220c-a115-440f-d72e-08d7eaa17c40
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2020 11:52:38.9813 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1pxn/DYlIBL8koUe8a/olKUu9OJzVfBJkLB8EpgPnHSE6LkKKEFMl4FdlYEMoUuzIJxDoRn2qcRW/Q/eeM0Brbq6br/f00aWSgA3io2BpuM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB4254
Subject: Re: [Cake] Cake tin behaviour - discuss....
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============0120385630063239717=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0120385630063239717==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_5791979A-B25A-42B8-AE55-E08E3A39F02F";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_5791979A-B25A-42B8-AE55-E08E3A39F02F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 26 Apr 2020, at 14:53, David P. Reed <dpreed@deepplum.com> wrote:
>=20
> Very interesting. However, I'm curious about what is being "ping'ed" =
from outside.
>=20
> I would bet that the ping comes in on your router interface and is =
reflected immediately back. Which would mean that it might not at all be =
going through the Cake layer. That depends on the details of your setup, =
which you didn't share.

The address being pinged from the external =E2=80=98ping box=E2=80=99 is =
that of the globally routable IPv6 WAN interface on my APU2 router.  The =
ping packet is going through 2 instances of cake, one on ingress =
(ifb4eth0), one on egress (eth0).

DSCP is applied to the packets by tc filter action act_ctinfo JUST =
before cake gets to see the packets.  I know DSCP is affecting cake tin =
selection because I see cake=E2=80=99s tin byte/packet counters adjust =
accordingly.  icmp/icmpv6 traffic is marked as BE by default AND also =
explicitly by some ip=E2=80=99n=E2=80=99tables rules that set it so.

> As you probably know, Cake works by packet shaping in the box where it =
runs, in the Linux stack. If the ping responder is on the ISP side of =
Cake, it will not be measuring lag-under-load *inside* cake.

I think I answered that above, however just for good measure, I=E2=80=99ve=
 set up another =E2=80=98ping latency=E2=80=99 test to a box that is =
definitely on my LAN side, so it=E2=80=99ll go: ingress (cake) eth0 =
(wan) -> egress eth1 (lan) -> switches -> device under test -> ingress =
eth1 (lan) -> egress (cake) eth0 (wan)

Note that the DSCP applied by cake on egress is ignored by the ISP.  =
Similarly, it=E2=80=99s a very rare thing to see a non 0 DSCP come in =
from them.  I=E2=80=99m using DSCP =E2=80=98internally=E2=80=99 purely =
to provide CAKE with some traffic identification and hence clue as to =
how to shape it.

>=20
> End-to-end lag-under-load on multiple paths sharing a bottleneck is =
the problem Cake was invented to solve. (Jonathan - you agree?) Yes, it =
will move that congestion "inside" itself, pulling it out of the =
bottleneck itself. There it drops and ECN's "as if" the bottleneck were =
working correctly, rather than being "bufferbloated".
>=20
> So it would be interesting to learn more about the topology of your =
test to interpret this ping.  A more interesting ping would be along the =
fujl path that the other flows are taking. Your ISP can't provide that.

My question was trying to determine what cake was doing:

bandwidth / per host fairness / tin weighting or
bandwidth / tin weighting / per host fairness

I was expecting the latter and Jonathan has confirmed my expectation to =
be the correct one.  The results I saw under some circumstance appeared =
more toward the former, which boggled the mind.


Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_5791979A-B25A-42B8-AE55-E08E3A39F02F
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl6mx4YACgkQs6I4m53i
M0qMUQ/5AXhi0B/M7Ux8MwYhmyqtxWWU3+pxNFF4p6dxlj0f4mJvRZ4Y50VtHgQ+
dgJ2bktXBbzgmQTepkDv0ShyhM9a9pvmXJtfOQhr0p872k0c7MspzvAY1A+Uvf6x
FqlzYNZQsih9vrQMFJ601DiIk+Csgoj7hYK2rYoixHvqHLkiwj7//Yvaxgo6XZz+
KgRTW+qZi3clCMWZQAxpk/h/JKgUfa2LKpApzzP1eZ6CYbx6bjh80kd1O6F+Hal9
+uA3tJgw92l6dWSpbn5NMmmTbQ08nfL7YDMSj3Wjs8qw3tKQoHnSWdmwWm82IVqZ
xM/hdPDUYU+MEt5Wo1zRTmvsZ1LjNjiwV8JFHXXJqQ++A8qJGHNjslVgZA3NsaRv
kbLFw3t0BrdcLKKBfJiJ4gC+4VBHhCEZliNSiF4lIe24G8QEQBdeWubGm8NMZmAA
GtcHQtxFSB2JvUwDIlmdnfaeqxrj72gYY9jvb3+pcNkfX92WelvkbsiD2tEHwLhW
USPATCBbwjI28YKQGSaZ53ndjYUuTxLPwMKrL1Q6xN/DKMkAAEdVFomJnZmMfJTQ
Nq4+KnmFN82mcob7LKkf4tHQkai4Jzl6ZBETYOp/X9a//T+LnKqsHCVdOB4hVB1r
Q9nZRFkPFPKI6Fx0HDMEMJzU3B6GQyhPCyW0CvZHQEf3PXQONac=
=ANvh
-----END PGP SIGNATURE-----

--Apple-Mail=_5791979A-B25A-42B8-AE55-E08E3A39F02F--

--===============0120385630063239717==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0120385630063239717==--
