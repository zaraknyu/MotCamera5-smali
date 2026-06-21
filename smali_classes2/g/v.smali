.class public final Lg/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lg/v;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lg/v;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lg/v;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v0
.end method

.method public final hashCode()I
    .locals 6

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v0, p0}, La/l;->a(IZ)I

    move-result p0

    const-wide/16 v0, 0x5dc

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x1f

    const-wide/16 v1, 0x2ee

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v2, p0

    mul-int/lit8 v2, v2, 0x1f

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v2

    mul-int/lit8 p0, p0, 0x1f

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    add-int/2addr v4, p0

    mul-int/lit8 v4, v4, 0x1f

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v4

    mul-int/lit8 p0, p0, 0x1f

    const-wide/16 v0, 0xfa

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x1f

    const-wide/16 v4, 0x1770

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    add-int/2addr v4, p0

    mul-int/lit8 v4, v4, 0x1f

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v4

    mul-int/lit8 p0, p0, 0x1f

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    add-int/2addr v4, p0

    mul-int/lit8 v4, v4, 0x1f

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v4

    mul-int/lit8 p0, p0, 0x1f

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v2, p0

    mul-int/lit8 v2, v2, 0x1f

    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v2

    mul-int/lit8 p0, p0, 0x1f

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "CaptureTimings(disableLiveEdgeDetection=false, disablePostCaptureAnimation=false, magicCleanLatency=1500, animationTime=750, accessibilityAnimationTime=3000, liveEdgeDetectionDelayAfterDeviceMove=3000, resumeShutterButtonDelay=1000, accessibilityLiveEdgeDetectionDelay=3000, liveEdgeDetectionDelay=250, liveEdgeDetectionTimeout=6000, whiteboardAutoCaptureTimeout=2000, deviceStabilityTimeMillis=1000, qrcodeFirstUsageDelayMillis=5000, clearQRCodeTimeMillis=5000, sensorChangedIntervalMillis=500, startCameraDelay=100, liveEdgeDetectionDelayWithoutCIC=2000)"

    return-object p0
.end method
