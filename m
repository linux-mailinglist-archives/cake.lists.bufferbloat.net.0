Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C31B47B5F
	for <lists+cake@lfdr.de>; Sun,  7 Sep 2025 14:40:12 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 1023462C2D8;
	Sun, 07 Sep 2025 14:40:11 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=mattcorallo.com header.i=@mattcorallo.com header.a=rsa-sha256 header.s=1757247662 header.b=ZI8OzX9s;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=clients.mail.as397444.net header.i=@clients.mail.as397444.net header.a=rsa-sha256 header.s=1757247664 header.b=AuhYx7am
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1757248810;
 b=im/1oDnszOoD+PI+1u5Cwqb8eVDn7hfq5pz77KJHDqpgjNFgYjRINTnXsohX8Eu0I2sym
 6DuOnrzuw5OOqAXOqV8bRU8Fm+dlcPFhi6MZBU5VcoYAb6Yf4B/b3J15vvvephFjD/C3Eba
 BpEmDmhpaWIcu++vgJjib13fgEZYVec=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1757248810; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=1NUzvOlkDzf8FnDfb62AXGsd86qji6pv4nonUUC1AAg=;
 b=NM6uwTDcZjrKk1/7Vhtc1Q44AH+Vph0sEfdSos+yVRUZi5IoPUHaE6Pi+AQoBtAsw9/oJ
 vU6cm4B75kvnJEypgLJMKF/4WZMr1o0Y0+yQ1g2dOR62CUwKA28cRP3t3S/879jmd941Q1r
 w5mv4dvXzrrPCH5s/x+db6r3Rzpi2Fc=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=mattcorallo.com;
 arc=none;
 dmarc=pass header.from=mattcorallo.com policy.dmarc=reject
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=mattcorallo.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=mattcorallo.com
 policy.dmarc=reject
Received: from mail.as397444.net (mail.as397444.net [IPv6:2620:6e:a000:1::99])
	by mail.toke.dk (Postfix) with ESMTPS id D035162C2C6
	for <cake@lists.bufferbloat.net>; Sun, 07 Sep 2025 14:40:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=mattcorallo.com; s=1757247662; h=Subject:From:To:From:Subject:To:Cc:Cc:
	Reply-To:In-Reply-To:References;
	bh=5hT8GjcENoaE84O5rDL9BxhtSzuk0NRjDrARedx3brg=; b=ZI8OzX9sgTyh/Wa+BxtnYpBRnP
	SJDmv91BcCYxTbxSbioq8Vj0X3sIJ3xaKfWYYYtzcuA3/DxBvTBe6OBXAqhZsvHreSl3z1psuZFfN
	5TDINLPXUfVQRVYN8XyajT5CFszqiCmL747zT1msg6Fk0ojWXHad2SbCbWe2fklNsqMh6eDo3Yjtw
	q5REhJyYU3wAQAZ3ZhfvguFz+Q5vQqZqggfZivhrPXwEA4e2qOwD/BZY2/y4kgc7J5KEQz2ZYKxDI
	7AN1BCvXFByeIrh4Q2kizFj55gqAYtMhP69vqry8qL2FpAz29CSk/y1rKuG7QmQ0ceewGCyGIzI5/
	0OTHlUDA==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=clients.mail.as397444.net; s=1757247664; h=Subject:From:To:From:Subject:To:
	Cc:Cc:Reply-To:In-Reply-To:References;
	bh=5hT8GjcENoaE84O5rDL9BxhtSzuk0NRjDrARedx3brg=; b=AuhYx7am7zDrYq6FxU7q9CCQts
	XhVdg0mD7TVSuzvgEElQ/oeH6iElL0gbhGj5IaDcC+jwF6rWce0epzWad5NmLkN+s7enDJRJXlnPB
	y3yHH6OoEr50R5sh6hUaFSJZBB9GFyG9dam4ImeyouQ1J5lMIy2nNrrY4Jarjdp1jL2n5WRNuarve
	qk45bsn8HWWarn0AImXd0fCWWeEZ0/WVeS7+GuZ7SK3ublAKuApuYzbEhb5ey2JDe98cKO76Z/H0v
	QmPDuPN45Rzj2iTpGLWAMMiSAHdpduqZfdCGC3aCQbfSnKzTbHorM8AHoPyFgl3NcoSqLrPWBjLu+
	zgxwIA9w==;
X-DKIM-Note: Keys used to sign are likely public at
X-DKIM-Note: https://as397444.net/dkim/mattcorallo.com and
X-DKIM-Note: https://as397444.net/dkim/clients.mail.as397444.net
X-DKIM-Note: For more info, see https://as397444.net/dkim/
Received: by mail.as397444.net with esmtpsa (TLS1.3) (Exim)
	(envelope-from <cltaapptfwbs@mattcorallo.com>)
	id 1uvEgg-00000001hhd-0Va4 for cake@lists.bufferbloat.net;
	Sun, 07 Sep 2025 12:40:06 +0000
Message-ID: <78318be7-30d0-4f6a-80f3-063f4558b142@mattcorallo.com>
Date: Sun, 7 Sep 2025 08:40:05 -0400
MIME-Version: 1.0
To: cake@lists.bufferbloat.net
Content-Language: en-US
From: Matt Corallo <cltaapptfwbs@mattcorallo.com>
Message-ID-Hash: DEURWBG6ZJJROGNDWMSBH2KUHADV7CL7
X-Message-ID-Hash: DEURWBG6ZJJROGNDWMSBH2KUHADV7CL7
X-MailFrom: cltaapptfwbs@mattcorallo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Parsing DSCP out of skb->priority
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/78318be7-30d0-4f6a-80f3-063f4558b142@mattcorallo.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Its (presumably) not uncommon to have multiple encapsulation tunnels running on a host which then 
wants to do (cake) shaping on the actual outbound interface. In this case, the skb->hash is 
(hopefully) preserved from the original packet to select the right flow queue, but the DSCP isn't. 
This is ideally what the priority field of the skb is for - `skbedit` can set the priority flag of 
the packet before "exiting" the tunnel interface, and cake can ultimately read that priority flag to 
select a tin. However, doing so requires manual tin mapping in skbedit, reading the DSCP field and 
mapping them to the right tin entirely be hand.

skbedit also supports `inheritdsfield` which just sets skb->priority to the DSCP field as-is. It 
would be nice if cake could read such priority fields, treating skb->priority as a DSCP when 
TC_H_MAJ(skb->priority) is zero (which it always will be in this case). Is there any interest in a 
patch to do so? Would such a patch need a new userspace option to disable it, or would wash suffice?
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net
