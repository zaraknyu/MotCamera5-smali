.class public final Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public timeAddedMs:J

.field public timeFinishedMs:J

.field public timeStartedMs:J


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;

    iget-wide v3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;->timeAddedMs:J

    iget-wide v5, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;->timeAddedMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;->timeStartedMs:J

    iget-wide v5, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;->timeStartedMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;->timeFinishedMs:J

    iget-wide p0, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;->timeFinishedMs:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;->timeAddedMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;->timeStartedMs:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;->timeFinishedMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-wide v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;->timeAddedMs:J

    iget-wide v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;->timeStartedMs:J

    iget-wide v4, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;->timeFinishedMs:J

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v6, "JobMetrics(timeAddedMs="

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", timeStartedMs="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", timeFinishedMs="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
