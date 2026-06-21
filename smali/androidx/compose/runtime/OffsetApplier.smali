.class public final Landroidx/compose/runtime/OffsetApplier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;
.implements Landroidx/compose/runtime/Applier;
.implements Landroidx/media3/datasource/DataSource$Factory;
.implements Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final applier:Ljava/lang/Object;

.field public nesting:I

.field public offset:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Landroidx/compose/runtime/OffsetApplier;->$r8$classId:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/tinder/StateMachine;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/tinder/StateMachine;-><init>(I)V

    iput-object v0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    const/16 v0, 0x1f40

    .line 11
    iput v0, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    .line 12
    iput v0, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x7

    iput v0, p0, Landroidx/compose/runtime/OffsetApplier;->$r8$classId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p2, v0, v1

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    .line 7
    iput p1, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    .line 8
    iput p2, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    return-void
.end method

.method public constructor <init>(IILandroid/util/SparseArray;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Landroidx/compose/runtime/OffsetApplier;->$r8$classId:I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    .line 23
    iput p2, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    .line 24
    iput-object p3, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IILandroidx/compose/animation/core/Easing;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/OffsetApplier;->$r8$classId:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    .line 19
    iput p2, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    .line 20
    new-instance v0, Landroidx/transition/TransitionValuesMaps;

    new-instance v1, Landroidx/compose/animation/core/FloatTweenSpec;

    invoke-direct {v1, p1, p2, p3}, Landroidx/compose/animation/core/FloatTweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    invoke-direct {v0, v1}, Landroidx/transition/TransitionValuesMaps;-><init>(Landroidx/compose/animation/core/FloatAnimationSpec;)V

    iput-object v0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IILcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Landroidx/compose/runtime/OffsetApplier;->$r8$classId:I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    .line 27
    iput p2, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    .line 28
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IILkotlin/jvm/functions/Function0;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/compose/runtime/OffsetApplier;->$r8$classId:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    iput p2, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    check-cast p3, Lkotlin/jvm/internal/Lambda;

    iput-object p3, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Landroidx/compose/runtime/OffsetApplier;->$r8$classId:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    iput-object p1, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    iput p3, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/Applier;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/OffsetApplier;->$r8$classId:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    iput p2, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    return-void
.end method

.method public constructor <init>(Landroidx/media3/container/Mp4Box$LeafBox;Landroidx/media3/common/Format;)V
    .locals 3

    const/4 v0, 0x4

    iput v0, p0, Landroidx/compose/runtime/OffsetApplier;->$r8$classId:I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iget-object p1, p1, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    iput-object p1, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    const/16 v0, 0xc

    .line 31
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 32
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 33
    const-string v1, "audio/raw"

    iget-object v2, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    iget v1, p2, Landroidx/media3/common/Format;->pcmEncoding:I

    iget p2, p2, Landroidx/media3/common/Format;->channelCount:I

    .line 35
    invoke-static {v1}, Landroidx/media3/common/util/Util;->getByteDepth(I)I

    move-result v1

    mul-int/2addr v1, p2

    if-eqz v0, :cond_0

    .line 36
    rem-int p2, v0, v1

    if-eqz p2, :cond_1

    .line 37
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Audio sample size mismatch. stsd sample size: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stsz sample size: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BoxParsers"

    invoke-static {v0, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, -0x1

    .line 38
    :cond_2
    iput v0, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    .line 39
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Landroidx/compose/runtime/OffsetApplier;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    .line 4
    iput p1, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    return-void
.end method


# virtual methods
.method public createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 3

    new-instance v0, Landroidx/media3/datasource/DefaultHttpDataSource;

    iget v1, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    iget v2, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    iget-object p0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    check-cast p0, Lcom/tinder/StateMachine;

    invoke-direct {v0, v1, v2, p0}, Landroidx/media3/datasource/DefaultHttpDataSource;-><init>(IILcom/tinder/StateMachine;)V

    return-object v0
.end method

.method public down(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    iget-object p0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/Applier;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/Applier;->down(Ljava/lang/Object;)V

    return-void
.end method

.method public get(II)B
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    check-cast p0, [[B

    aget-object p0, p0, p2

    aget-byte p0, p0, p1

    return p0
.end method

.method public getCurrent()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/Applier;

    invoke-interface {p0}, Landroidx/compose/runtime/Applier;->getCurrent()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getDelayMillis()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    return p0
.end method

.method public getDurationMillis()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    return p0
.end method

.method public getFixedSampleSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    return p0
.end method

.method public getSampleCount()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    return p0
.end method

.method public getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 6

    iget-object p0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroidx/transition/TransitionValuesMaps;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/transition/TransitionValuesMaps;->getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p0

    return-object p0
.end method

.method public getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 6

    iget-object p0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroidx/transition/TransitionValuesMaps;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/transition/TransitionValuesMaps;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p0

    return-object p0
.end method

.method public insertBottomUp(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/Applier;

    iget v1, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    if-nez v1, :cond_0

    iget p0, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr p1, p0

    invoke-interface {v0, p1, p2}, Landroidx/compose/runtime/Applier;->insertBottomUp(ILjava/lang/Object;)V

    return-void
.end method

.method public insertTopDown(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/Applier;

    iget v1, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    if-nez v1, :cond_0

    iget p0, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr p1, p0

    invoke-interface {v0, p1, p2}, Landroidx/compose/runtime/Applier;->insertTopDown(ILjava/lang/Object;)V

    return-void
.end method

.method public move(III)V
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/Applier;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    invoke-interface {p0, p1, p2, p3}, Landroidx/compose/runtime/Applier;->move(III)V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    iget-object p1, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    const/16 v0, 0x207

    iget-object v1, p2, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->top:I

    iget v1, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    add-int/2addr v1, v0

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget p0, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    add-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v1, p0, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method

.method public onPageScrolled(FI)V
    .locals 13

    int-to-float p2, p2

    add-float/2addr p2, p1

    iget-object p1, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v2, p2, v0

    if-nez v2, :cond_0

    const p2, 0x38d1b717    # 1.0E-4f

    sub-float p2, v0, p2

    :cond_0
    float-to-int v2, p2

    add-int/lit8 v3, v2, 0x1

    int-to-float v4, v3

    cmpl-float v0, v4, v0

    if-gtz v0, :cond_6

    if-gez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    int-to-float v0, v1

    rem-float/2addr p2, v0

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicators:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    iget-object v5, p1, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicators:Ljava/util/ArrayList;

    iget v6, p1, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicatorWidthFactor:F

    iget v7, p1, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicatorSize:F

    iget v8, p1, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicatorColor:I

    iget v9, p1, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicatorSelectedColor:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v10, "get(...)"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    sub-float v11, v6, v0

    mul-float/2addr v11, v7

    invoke-static {v0, p2, v11, v7}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    iput v11, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    if-ltz v3, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/ImageView;

    sub-float/2addr v6, v0

    mul-float/2addr v6, v7

    mul-float/2addr v6, p2

    add-float/2addr v6, v7

    float-to-int v0, v6

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    if-eq v9, v8, :cond_3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, p2, v1, v6}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v6, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, p2, v7, v8}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v5, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->getPager()Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerAdapter;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/google/zxing/Result;

    iget-object p2, p2, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast p2, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p2

    if-ne v2, p2, :cond_2

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget p1, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_5

    if-le v2, p1, :cond_4

    :goto_1
    if-ge p1, v2, :cond_4

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/OffsetApplier;->resetPosition(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    iget p1, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    if-ge v3, p1, :cond_5

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/OffsetApplier;->resetPosition(I)V

    add-int/lit8 p1, v2, 0x2

    iget p2, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    if-gt p1, p2, :cond_5

    :goto_2
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/OffsetApplier;->resetPosition(I)V

    if-eq p1, p2, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    iput v2, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    iput v3, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    :cond_6
    :goto_3
    return-void
.end method

.method public readNextSampleSize()I
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public remove(II)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/Applier;

    iget v1, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    if-nez v1, :cond_0

    iget p0, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr p1, p0

    invoke-interface {v0, p1, p2}, Landroidx/compose/runtime/Applier;->remove(II)V

    return-void
.end method

.method public resetPosition(I)V
    .locals 2

    iget-object p0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicatorSize:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->indicators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->updateIndicatorColor(I)V

    return-void
.end method

.method public set(III)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    check-cast p0, [[B

    aget-object p0, p0, p2

    int-to-byte p2, p3

    aput-byte p2, p0, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/runtime/OffsetApplier;->offset:I

    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    check-cast v5, [[B

    aget-object v5, v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v1, :cond_2

    aget-byte v7, v5, v6

    if-eqz v7, :cond_1

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    const-string v7, "  "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const-string v7, " 1"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v7, " 0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public up()V
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "OffsetApplier up called with no corresponding down"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    iget-object p0, p0, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/Applier;

    invoke-interface {p0}, Landroidx/compose/runtime/Applier;->up()V

    return-void
.end method
