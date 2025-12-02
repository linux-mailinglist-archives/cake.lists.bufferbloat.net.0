Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 72250C9B818
	for <lists+cake@lfdr.de>; Tue, 02 Dec 2025 13:43:18 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 8AAB4A1F7A5;
	Tue, 02 Dec 2025 13:43:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764679392;
	bh=uM41Q4ckMmlWFK6FT3THVLw/1UaV1dNutUOXuj0l8SI=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=AByqvaEkQQ69f7mOxPi8aHihTTRWPam3SeT99U52H0yBxYI58jz/UW0LpLjS/K7zI
	 VzAkbsz72V5vulI0TdACMueOdjkstRDtB6mBX3z7EZYUAMsQKrcqmkeDMkKwF5l3y2
	 4Gjz/h3koJ8cBjGRmLigi66cbLvFBMXznnkEg2OIRDw35MdjkMrxEl1FYWXBZPNly+
	 WRdFI3PfQ+ojezh+o3VpIHLk+3W/sScFypEpQ15pFyVTlK5Fsp6i8scdySq+TPJ2fx
	 9hPB98Y0mgKwMlTqYGKkzmj4B0D8moqvzQPeQnqzu6gk4puacVMEIr3UMtXWTtD8HA
	 CMKK0lTijTJEg==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764679392;
 b=ly7HkQ5m7emfPESj1ypyIwB9aPvjOCn5RLVv5+pXqYPmK1YSA1eMRXavD/eBrWV1GrEtT
 vz5vNOxnCLjuJYBbsG0Ct6AwYkyBdzDDpAJX+3tfBE1DGCa+LkdTHBHu25JmK0UJQEpDT4A
 L8hvag+ITAMmsbi8oyn3K0KcJUOWvsI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764679392; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=TLir2hwu0UHM/KMTb4jwzQmyVEIW7HOxfCfO9/LMxQo=;
 b=VO2U0mr3bPaLuXkq0Ei1WP8KDM6l/ggRQfGOXV78P9qgOFrOtreO+2F1v92PTlh2gDLTK
 ry7uAtN506mBon+GCoUDZChdsQzujIj2UmYYT6toX6ClaaZ1QEFqAireKIanIwCRhLyecrQ
 QE4gVvJjqQmsiMFdiE7u/0LT0d7xKb8=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=kernel.org;
 arc=none;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=kernel.org; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=kernel.org
 policy.dmarc=quarantine
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by mail.toke.dk (Postfix) with ESMTPS id BC4F0A1F780
	for <cake@lists.bufferbloat.net>; Tue, 02 Dec 2025 13:43:09 +0100 (CET)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 198C7600B0;
	Tue,  2 Dec 2025 12:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7251C116D0;
	Tue,  2 Dec 2025 12:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764679387;
	bh=aw3nZTvPz3Ho4XxxGAvYd5yHZRyDxEc2M1vfQsO+02Q=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=qcA7L4PX7XAxay0QB6MpvHYcIxhqqUEB8Au1aXD9ibowQEpyv3qGDMk6JcHEbSIFK
	 d4fyzrQbS2ZOd8o0QJg26gJIMTGMMw6fSUiBkuS2XsyFqJs4/5xGz3JVcg90T5x15o
	 ZGa+zkYmSRykAIxvQqEfwsl7nZTZE8e20ZFMmJuXHLsXQx60i+H8+G5CB6O6/OYjF6
	 9LDMiAyDmNOkzE+xidXv1UHJdHcYufD5LO1LM0zYxj5P5x9lNppVNPnLsg9EULBVDG
	 xKgOkXg43y2S4s/lEoqGPwy8i/QGsrsmsyqPfgQmlWwoF4PpS7uEO23kxHhie33fBo
	 UBwI4oL9BjWRQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 78AA73A54A15;
	Tue,  2 Dec 2025 12:40:08 +0000 (UTC)
MIME-Version: 1.0
Message-Id: 
 <176467920730.3217664.13875625137012436727.git-patchwork-notify@kernel.org>
Date: Tue, 02 Dec 2025 12:40:07 +0000
References: <20251128001415.377823-1-xmei5@asu.edu>
In-Reply-To: <20251128001415.377823-1-xmei5@asu.edu>
To: Xiang Mei <xmei5@asu.edu>
Cc: security@kernel.org, netdev@vger.kernel.org, toke@toke.dk,
 xiyou.wangcong@gmail.com, cake@lists.bufferbloat.net, bestswngs@gmail.com
Message-ID-Hash: RAEIIGMS4IQSSH5O56IPL2SGY2XPUB7F
X-Message-ID-Hash: RAEIIGMS4IQSSH5O56IPL2SGY2XPUB7F
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v8 1/2] net/sched: sch_cake: Fix incorrect qlen
 reduction in cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/176467920730.3217664.13875625137012436727.git-patchwork-notify@kernel.org/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: patchwork-bot+netdevbpf--- via Cake <cake@lists.bufferbloat.net>
Reply-To: patchwork-bot+netdevbpf@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello:

This series was applied to netdev/net.git (main)
by Paolo Abeni <pabeni@redhat.com>:

On Thu, 27 Nov 2025 17:14:14 -0700 you wrote:
> In cake_drop(), qdisc_tree_reduce_backlog() is used to update the qlen
> and backlog of the qdisc hierarchy. Its caller, cake_enqueue(), assumes
> that the parent qdisc will enqueue the current packet. However, this
> assumption breaks when cake_enqueue() returns NET_XMIT_CN: the parent
> qdisc stops enqueuing current packet, leaving the tree qlen/backlog
> accounting inconsistent. This mismatch can lead to a NULL dereference
> (e.g., when the parent Qdisc is qfq_qdisc).
> 
> [...]

Here is the summary with links:
  - [net,v8,1/2] net/sched: sch_cake: Fix incorrect qlen reduction in cake_drop
    https://git.kernel.org/netdev/net/c/9fefc78f7f02
  - [net,v8,2/2] selftests/tc-testing: Test CAKE scheduler when enqueue drops packets
    https://git.kernel.org/netdev/net/c/108f9405ce81

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net
