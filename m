Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C83B03294
	for <lists+cake@lfdr.de>; Sun, 13 Jul 2025 20:04:22 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 8C2AEB61B90;
	Sun, 13 Jul 2025 20:04:13 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=toke.dk header.i=@toke.dk header.a=rsa-sha256 header.s=20161023 header.b=XKIqU0Hg
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1752429848; bh=SWceJsC3KlzGq8PeuKI3yAhNsh5j9dGYUe4D/g787Vo=;
	h=From:To:Subject:Date:From;
	b=XKIqU0HgVGahvBWOgv9INVIyQqEfQQA2Yi4u/SeVSKZrU/2uYvFzNp4S1yy+AkROm
	 G940dDbML/UTrHUQxM1Z/5Damt7//559XySbA+RFXhcoTnCY/FKIqX9w3EkXsZTC7g
	 UVQDx3IaG6ePcnPI4MQjGhalBOPMFTEOEGViB2zad0CSX0pFGmNa+4ARFWCjbOJdVu
	 gT5yfa36CuiEh8KbN51bn2kTakizc8N4NalGTigmq0Vz04hPPdpgnbDZdrjIIgXZAZ
	 iYYLc+NJb64a7YWRzzlcOL0tiVxQBSMmec9RbltRMekCEdHOT+85sS7ST9oJxdM25c
	 NTbe1qH91QPBw==
To: bloat@lists.bufferbloat.net, cake@lists.bufferbloat.net,
 cerowrt-devel@lists.bufferbloat.net, codel@lists.bufferbloat.net,
 ecn-sane@lists.bufferbloat.net, libreqos@lists.bufferbloat.net,
 make-wifi-fast@lists.bufferbloat.net, nnagain@lists.bufferbloat.net,
 rpm@lists.bufferbloat.net, starlink@lists.bufferbloat.net
Date: Sun, 13 Jul 2025 20:04:07 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87h5zg0xyg.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: GUNYWCCPFK4FFBH4AMQSKIMEQUP52WCL
X-Message-ID-Hash: GUNYWCCPFK4FFBH4AMQSKIMEQUP52WCL
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Mailing list migration complete
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87h5zg0xyg.fsf@toke.dk/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi folks

The mailing list migration is now complete, and everything should be up
and running on my mail server. Please let me know of any oddities or
weird failures you encounter.

List archives are available for all lists at the toplevel URL:
https://lists.bufferbloat.net/

The archives are based on the public-inbox archiver[0], also used by the
Lore email archives for the Linux kernel lists. This means that the
archives are git repositories under the hood, and can be easily
mirrored. I very much encourage anyone who can to set up a mirror (see
instructions at the "mirroring instructions" link at the bottom of each
list archive page). If you do, and want the mirror linked from the list
description, let me know!

-Toke

[0] https://public-inbox.org/
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net
