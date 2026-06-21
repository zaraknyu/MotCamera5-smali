.class public abstract Lcom/motorola/camera/arcsoft/ArcsoftSolarTimeCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static calculateSolarEventTime(Landroid/location/Location;Z)D
    .locals 8

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x51

    int-to-double v4, v4

    const-wide v6, 0x3fef8fc7e3f1f8fcL    # 0.9863013698630136

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, 0x403770a3d70a3d71L    # 23.44

    mul-double/2addr v4, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    div-double/2addr v2, v4

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    sub-double/2addr v6, v2

    if-eqz p1, :cond_0

    div-double/2addr v0, v4

    add-double/2addr v0, v6

    goto :goto_0

    :cond_0
    div-double/2addr v0, v4

    sub-double v0, v6, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    const p1, 0x36ee80

    div-int/2addr p0, p1

    int-to-double p0, p0

    add-double/2addr v0, p0

    const-wide/high16 p0, 0x4038000000000000L    # 24.0

    cmpl-double v2, v0, p0

    if-ltz v2, :cond_1

    sub-double/2addr v0, p0

    return-wide v0

    :cond_1
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    add-double/2addr v0, p0

    :cond_2
    return-wide v0
.end method
