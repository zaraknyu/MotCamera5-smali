.class public final Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;
.super Lcom/motorola/camera/ui/widgets/gl/animations/Animation;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public mCurrentCount:I

.field public final mDelta:F

.field public final mDuration:J

.field public final mEnd:F

.field public final mRepeatCount:I

.field public final mRepeatMode:I

.field public mReverseUpdate:Z

.field public final mStart:F

.field public mStartTime:J


# direct methods
.method public constructor <init>(Landroidx/collection/internal/Lock;JFFII)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->$r8$classId:I

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;-><init>(Landroidx/collection/internal/Lock;)V

    .line 2
    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mRepeatMode:I

    .line 3
    iput p7, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mRepeatCount:I

    .line 4
    iput-wide p2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mDuration:J

    .line 5
    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStart:F

    .line 6
    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mEnd:F

    sub-float/2addr p5, p4

    .line 7
    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mDelta:F

    .line 8
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->$r8$classId:I

    .line 10
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;-><init>(Landroidx/collection/internal/Lock;)V

    .line 11
    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mRepeatMode:I

    .line 12
    iput p7, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mRepeatCount:I

    .line 13
    iput-wide p2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mDuration:J

    .line 14
    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStart:F

    .line 15
    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mEnd:F

    sub-float/2addr p5, p4

    .line 16
    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mDelta:F

    .line 17
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    return-void
.end method


# virtual methods
.method public final animationUpdate([F)Z
    .locals 14

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    const/4 v0, 0x0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mEnd:F

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Landroidx/collection/internal/Lock;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;

    invoke-virtual {p1, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;->applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;F)V

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Landroidx/collection/internal/Lock;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroidx/collection/internal/Lock;->onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Landroidx/collection/internal/Lock;

    if-eqz p1, :cond_11

    invoke-virtual {p1, p0}, Landroidx/collection/internal/Lock;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    goto/16 :goto_5

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float p1, v4

    iget-wide v4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mDuration:J

    long-to-float v4, v4

    div-float/2addr p1, v4

    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mReverseUpdate:Z

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStart:F

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mRepeatMode:I

    const/4 v7, 0x0

    const/4 v8, -0x1

    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mRepeatCount:I

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    if-nez v4, :cond_9

    cmpl-float v4, p1, v10

    if-lez v4, :cond_e

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mCurrentCount:I

    add-int/2addr p1, v11

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mCurrentCount:I

    if-le p1, v9, :cond_5

    if-ne v9, v8, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Landroidx/collection/internal/Lock;

    if-eqz p1, :cond_4

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;

    invoke-virtual {p1, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;->applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;F)V

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Landroidx/collection/internal/Lock;

    if-eqz p1, :cond_11

    invoke-virtual {p1, p0}, Landroidx/collection/internal/Lock;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    goto/16 :goto_5

    :cond_5
    :goto_0
    iput-wide v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStartTime:J

    invoke-static {v6}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    if-eqz p1, :cond_7

    if-eq p1, v11, :cond_6

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Landroidx/collection/internal/Lock;

    if-eqz p1, :cond_8

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;

    invoke-virtual {p1, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;->applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;F)V

    goto :goto_1

    :cond_7
    iput-boolean v11, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mReverseUpdate:Z

    :cond_8
    :goto_1
    move p1, v7

    goto :goto_3

    :cond_9
    cmpl-float v4, p1, v10

    if-lez v4, :cond_e

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mCurrentCount:I

    add-int/2addr p1, v11

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mCurrentCount:I

    if-le p1, v9, :cond_c

    if-ne v9, v8, :cond_a

    goto :goto_2

    :cond_a
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Landroidx/collection/internal/Lock;

    if-eqz p1, :cond_b

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;

    invoke-virtual {p1, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;->applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;F)V

    :cond_b
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Landroidx/collection/internal/Lock;

    if-eqz p1, :cond_11

    invoke-virtual {p1, p0}, Landroidx/collection/internal/Lock;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    goto :goto_5

    :cond_c
    :goto_2
    iput-wide v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStartTime:J

    invoke-static {v6}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_1

    :cond_d
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mReverseUpdate:Z

    goto :goto_1

    :cond_e
    :goto_3
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mReverseUpdate:Z

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mDelta:F

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p1, v2

    sub-float/2addr v1, p1

    goto :goto_4

    :cond_f
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p1, v2

    add-float v1, p1, v5

    :goto_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Landroidx/collection/internal/Lock;

    if-eqz p1, :cond_10

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;

    invoke-virtual {p1, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;->applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;F)V

    :cond_10
    move v0, v11

    :cond_11
    :goto_5
    return v0

    :pswitch_0
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Landroidx/collection/internal/Lock;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mEnd:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    if-eqz p1, :cond_13

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_6

    :cond_12
    if-eqz v1, :cond_22

    invoke-virtual {v1, p0}, Landroidx/collection/internal/Lock;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    goto/16 :goto_10

    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStartTime:J

    sub-long v6, v4, v6

    long-to-float p1, v6

    iget-wide v6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mDuration:J

    long-to-float v6, v6

    div-float/2addr p1, v6

    iget-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mReverseUpdate:Z

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStart:F

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mRepeatMode:I

    const/4 v9, 0x0

    const/4 v10, -0x1

    iget v11, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mRepeatCount:I

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    if-nez v6, :cond_1a

    cmpl-float v6, p1, v12

    if-lez v6, :cond_1f

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mCurrentCount:I

    add-int/2addr p1, v13

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mCurrentCount:I

    if-le p1, v11, :cond_16

    if-ne v11, v10, :cond_14

    goto :goto_8

    :cond_14
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_7

    :cond_15
    if-eqz v1, :cond_22

    invoke-virtual {v1, p0}, Landroidx/collection/internal/Lock;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    goto/16 :goto_10

    :cond_16
    :goto_8
    iput-wide v4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStartTime:J

    invoke-static {v8}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    if-eqz p1, :cond_18

    if-eq p1, v13, :cond_17

    goto :goto_a

    :cond_17
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_9

    :cond_18
    iput-boolean v13, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mReverseUpdate:Z

    :cond_19
    :goto_a
    move p1, v9

    goto :goto_d

    :cond_1a
    cmpl-float v6, p1, v12

    if-lez v6, :cond_1f

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mCurrentCount:I

    add-int/2addr p1, v13

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mCurrentCount:I

    if-le p1, v11, :cond_1d

    if-ne v11, v10, :cond_1b

    goto :goto_c

    :cond_1b
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v2, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_b

    :cond_1c
    if-eqz v1, :cond_22

    invoke-virtual {v1, p0}, Landroidx/collection/internal/Lock;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    goto :goto_10

    :cond_1d
    :goto_c
    iput-wide v4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStartTime:J

    invoke-static {v8}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_a

    :cond_1e
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mReverseUpdate:Z

    goto :goto_a

    :cond_1f
    :goto_d
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mReverseUpdate:Z

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mDelta:F

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    invoke-interface {p0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    mul-float/2addr p0, v1

    sub-float/2addr v2, p0

    goto :goto_e

    :cond_20
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    invoke-interface {p0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    mul-float/2addr p0, v1

    add-float v2, p0, v7

    :goto_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_f

    :cond_21
    move v0, v13

    :cond_22
    :goto_10
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 13
    filled-new-array {p2}, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    return-void

    .line 14
    :pswitch_0
    filled-new-array {p2}, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 2

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStartTime:J

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->setTextures([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mCurrentCount:I

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mReverseUpdate:Z

    .line 5
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Landroidx/collection/internal/Lock;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/collection/internal/Lock;->onAnimationStart()V

    :cond_0
    return-void

    .line 7
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStartTime:J

    .line 8
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->setTextures([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mCurrentCount:I

    .line 10
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mReverseUpdate:Z

    .line 11
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Landroidx/collection/internal/Lock;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/collection/internal/Lock;->onAnimationStart()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
