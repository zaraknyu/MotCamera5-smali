.class public final Landroidx/compose/animation/core/FloatTweenSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/core/FloatAnimationSpec;


# instance fields
.field public final delayNanos:J

.field public final duration:I

.field public final durationNanos:J

.field public final easing:Landroidx/compose/animation/core/Easing;


# direct methods
.method public constructor <init>(IILandroidx/compose/animation/core/Easing;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/animation/core/FloatTweenSpec;->duration:I

    iput-object p3, p0, Landroidx/compose/animation/core/FloatTweenSpec;->easing:Landroidx/compose/animation/core/Easing;

    int-to-long v0, p1

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/compose/animation/core/FloatTweenSpec;->durationNanos:J

    int-to-long p1, p2

    mul-long/2addr p1, v2

    iput-wide p1, p0, Landroidx/compose/animation/core/FloatTweenSpec;->delayNanos:J

    return-void
.end method


# virtual methods
.method public final getDurationNanos(FFF)J
    .locals 2

    iget-wide p1, p0, Landroidx/compose/animation/core/FloatTweenSpec;->delayNanos:J

    iget-wide v0, p0, Landroidx/compose/animation/core/FloatTweenSpec;->durationNanos:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final getValueFromNanos(FFFJ)F
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/core/FloatTweenSpec;->delayNanos:J

    sub-long/2addr p4, v0

    const-wide/16 v0, 0x0

    cmp-long p3, p4, v0

    if-gez p3, :cond_0

    move-wide p4, v0

    :cond_0
    iget-wide v0, p0, Landroidx/compose/animation/core/FloatTweenSpec;->durationNanos:J

    cmp-long p3, p4, v0

    if-lez p3, :cond_1

    move-wide p4, v0

    :cond_1
    iget p3, p0, Landroidx/compose/animation/core/FloatTweenSpec;->duration:I

    if-nez p3, :cond_2

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    long-to-float p3, p4

    long-to-float p4, v0

    div-float/2addr p3, p4

    :goto_0
    iget-object p0, p0, Landroidx/compose/animation/core/FloatTweenSpec;->easing:Landroidx/compose/animation/core/Easing;

    invoke-interface {p0, p3}, Landroidx/compose/animation/core/Easing;->transform(F)F

    move-result p0

    const/4 p3, 0x1

    int-to-float p3, p3

    sub-float/2addr p3, p0

    mul-float/2addr p3, p1

    mul-float/2addr p2, p0

    add-float/2addr p2, p3

    return p2
.end method

.method public final getVelocityFromNanos(FFFJ)F
    .locals 9

    iget-wide v1, p0, Landroidx/compose/animation/core/FloatTweenSpec;->delayNanos:J

    sub-long v1, p4, v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    move-wide v1, v3

    :cond_0
    iget-wide v5, p0, Landroidx/compose/animation/core/FloatTweenSpec;->durationNanos:J

    cmp-long v7, v1, v5

    if-lez v7, :cond_1

    move-wide v6, v5

    goto :goto_0

    :cond_1
    move-wide v6, v1

    :goto_0
    cmp-long v1, v6, v3

    if-nez v1, :cond_2

    return p3

    :cond_2
    const-wide/32 v1, 0xf4240

    sub-long v4, v6, v1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/animation/core/FloatTweenSpec;->getValueFromNanos(FFFJ)F

    move-result v8

    move-wide v4, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/animation/core/FloatTweenSpec;->getValueFromNanos(FFFJ)F

    move-result v0

    sub-float/2addr v0, v8

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    return v0
.end method
