Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE04D18611
	for <lists+cake@lfdr.de>; Tue, 13 Jan 2026 12:13:48 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 4CBE3BA3098;
	Tue, 13 Jan 2026 12:13:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1768302827;
	bh=kWZOetPsuJ9P5g+1X0FS39CQPJTuo+c0n2oIjhmjPC8=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=hoQSU8OvgAD/LJ992BR9ZKPafbyWWzYZBeAtH/AK9U80jddaCBrsHZ/Nr2cnEj7AL
	 +VSmzm4b1oKnhZZa872oZhixUpy5kv8W01aezJW+CFw+Hmdv7zgq9siJOrIQjOZ+vo
	 bS6Fhw9kSdHqdSqMlrQV44QC+zHY7x9Mo9tM/s//oWX5q9IcB/2uTCWI32jnte6NaW
	 Ye/bKYMu71yH+aQhyeVE6nMjbEw6N76VoXdVXErlALezbfWb8Aw86WBgvcZ8Neke4N
	 hqBMbKLgeRfxlkI58+wweyJDbAV+O/P/801PFOPgN1/V5qXM+W7O5JGB8emAyE+pVT
	 iclBgfbd8ssrA==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1768302827;
 b=dz8BSXWKhuvWwKZLIMB/dvo0IEdo3yn6jgrIKo2Xh5qmrSYH4pvkYgLDS2n/Fe1A5ZQmq
 hvY81CQaj0zEwO5aC3Hcco8qUCMA17plorwWsSAXDv9+UqXUjnKnYEwpes+9W95BgO3/R0T
 FmJwzkDOKfFAVNtH46afQw7LHOsvhtU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1768302827; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=KjD2F9xVOYbJiyflzcPv5Hqrn6i4xA/i9aWRu/zUg5s=;
 b=i8w0IxEIH1dno/UedWKrfAX+Dkz/kWZl/ob4FCAlskKtCTFBS3LAzvOtCOpkUm3lyFDeu
 Ydqdxd44zds7NmIJ9HLOKdQBlNctX5mRDmDdPxBEGZdY/3oT3S3NjVsrO5dV7B6pqZMRxfT
 NSJu2Rwml3eBaWxt/fj0ENqViKkjQ4I=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=kernel.org;
 arc=none;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=kernel.org; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=kernel.org
 policy.dmarc=quarantine
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
	by mail.toke.dk (Postfix) with ESMTPS id D88DABA307F
	for <cake@lists.bufferbloat.net>; Tue, 13 Jan 2026 12:13:43 +0100 (CET)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CA8AC6001D;
	Tue, 13 Jan 2026 11:13:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80E12C116C6;
	Tue, 13 Jan 2026 11:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768302821;
	bh=BxztyO1qh8uJ0l014evsMbIgkb5z5aHF5gYrPz92OK0=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=mMEeg2L5elUQikae0HZtxF6U1ue5XMgLz09+8EEgcYmtrkmxtDqZs9CW3nbjayzWz
	 g3WvK3auVhDVUZSUsfoulWJ/3zKj9SxMrGZgMuGSZXQf5BHeoOOnyXzKPRLtV/0QEu
	 T6XhWnhZrQ1+mzNApa5Jacx8Cwt4boCgZp3HSxwveP4PiyamewHvjp2IGjv9CEf0Rn
	 bk8jjVzqOJA6ZNt0LP7gaVb7mmXw1BVsqgUNCd4Q9NLVjQyHL8/vjE1mi5P4mgMYhl
	 jWbtu7RdXz8VkcPnE2WEY1oZn1D0+TqaC40TugoPYOzn/JrjN609LxLPrc1vMQpSRQ
	 /3Cu5CZmNBnjQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 3B8813808200;
	Tue, 13 Jan 2026 11:10:16 +0000 (UTC)
MIME-Version: 1.0
Message-Id: 
 <176830261504.2192300.2198008591862995733.git-patchwork-notify@kernel.org>
Date: Tue, 13 Jan 2026 11:10:15 +0000
References: <20260109-mq-cake-sub-qdisc-v8-0-8d613fece5d8@redhat.com>
In-Reply-To: <20260109-mq-cake-sub-qdisc-v8-0-8d613fece5d8@redhat.com>
To: 
 =?utf-8?b?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+?=@aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org
Cc: toke@toke.dk, jhs@mojatatu.com, xiyou.wangcong@gmail.com,
 jiri@resnulli.us, davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, horms@kernel.org, j.koeppeler@tu-berlin.de,
 cake@lists.bufferbloat.net, netdev@vger.kernel.org, willemb@google.com,
 victor@mojatatu.com
Message-ID-Hash: U7NGWEMMBYZ3LH4ZNMC62NXLLSWRHUY6
X-Message-ID-Hash: U7NGWEMMBYZ3LH4ZNMC62NXLLSWRHUY6
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v8 0/6] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/176830261504.2192300.2198008591862995733.git-patchwork-notify@kernel.org/>
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

This series was applied to netdev/net-next.git (main)
by Paolo Abeni <pabeni@redhat.com>:

On Fri, 09 Jan 2026 14:15:29 +0100 you wrote:
> This series adds a multi-queue aware variant of the sch_cake scheduler,
> called 'cake_mq'. Using this makes it possible to scale the rate shaper
> of sch_cake across multiple CPUs, while still enforcing a single global
> rate on the interface.
> 
> The approach taken in this patch series is to implement a separate qdisc
> called 'cake_mq', which is based on the existing 'mq' qdisc, but differs
> in a couple of aspects:
> 
> [...]

Here is the summary with links:
  - [net-next,v8,1/6] net/sched: Export mq functions for reuse
    https://git.kernel.org/netdev/net-next/c/8b27fd66f519
  - [net-next,v8,2/6] net/sched: sch_cake: Factor out config variables into separate struct
    https://git.kernel.org/netdev/net-next/c/bc0ce2bad36c
  - [net-next,v8,3/6] net/sched: sch_cake: Add cake_mq qdisc for using cake on mq devices
    https://git.kernel.org/netdev/net-next/c/ebc65a873eff
  - [net-next,v8,4/6] net/sched: sch_cake: Share config across cake_mq sub-qdiscs
    https://git.kernel.org/netdev/net-next/c/87826c01837c
  - [net-next,v8,5/6] net/sched: sch_cake: share shaper state across sub-instances of cake_mq
    https://git.kernel.org/netdev/net-next/c/1bddd758bac2
  - [net-next,v8,6/6] selftests/tc-testing: add selftests for cake_mq qdisc
    https://git.kernel.org/netdev/net-next/c/8d61f1a9f254

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net
