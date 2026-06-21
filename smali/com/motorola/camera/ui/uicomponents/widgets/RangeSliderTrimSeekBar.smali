.class public final Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;
.super Lcom/motorola/camera/ui/widgets/TrimSeekBar;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u0015\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u0001:\u0004 !\"#J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\r\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004R\'\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u00080\u0007j\u0008\u0012\u0004\u0012\u00020\u0008`\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR*\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R*\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0011\u001a\u0004\u0008\u0017\u0010\u0013\"\u0004\u0008\u0018\u0010\u0015R*\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00198\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006$"
    }
    d2 = {
        "Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;",
        "Lcom/motorola/camera/ui/widgets/TrimSeekBar;",
        "",
        "getStartTrimmingMax",
        "()F",
        "getEndTrimmingMin",
        "getRangeCenterX",
        "Ljava/util/HashSet;",
        "Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;",
        "Lkotlin/collections/HashSet;",
        "rangeListeners",
        "Ljava/util/HashSet;",
        "getRangeListeners",
        "()Ljava/util/HashSet;",
        "",
        "value",
        "maximumRange",
        "I",
        "getMaximumRange",
        "()I",
        "setMaximumRange",
        "(I)V",
        "minimumRange",
        "getMinimumRange",
        "setMinimumRange",
        "",
        "values",
        "[I",
        "getValues",
        "()[I",
        "setValues",
        "([I)V",
        "com/motorola/camera/cli/content/CliPresentationHolder",
        "GestureListener",
        "RangeSliderListener",
        "com/google/android/gms/internal/mlkit_vision_common/zzkv",
        "MotCamera5-v10.0.47.24_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final activeArea:Landroid/graphics/RectF;

.field public activeThumbIndex:I

.field public final activeTrackPaint:Landroid/graphics/Paint;

.field public final animatedHandleRect:Landroid/graphics/Rect;

.field public downEventHandledByParent:Z

.field public final gestureDetector:Landroid/view/GestureDetector;

.field public final gestureListener:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;

.field public final handleHeight:F

.field public final handleHeightActive:F

.field public final handlePaint:Landroid/graphics/Paint;

.field public final handleRect:Landroid/graphics/RectF;

.field public final handleTouchRect:Landroid/graphics/RectF;

.field public final inactiveTrackPaint:Landroid/graphics/Paint;

.field public maximumRange:I

.field public minimumRange:I

.field public moveHandleActive:Z

.field public final rangeListeners:Ljava/util/HashSet;

.field public final selectedFramesAreaPaint:Landroid/graphics/Paint;

.field public final selectedFramesBorderPaint:Landroid/graphics/Paint;

.field public final sliderHeight:I

.field public final sliderTopPadding:I

.field public stateAnimator:Landroid/animation/AnimatorSet;

.field public final thumbs:[Lcom/motorola/camera/cli/content/CliPresentationHolder;

.field public values:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mAutoPlay:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mRestrictPlayheadPosition:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mDrawPlayHead:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mIsBounce:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mIsPlaying:Z

    iput v0, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mTotalFrameCount:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mSelectionStartFrame:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mSelectionEndFrame:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mCurrentFrame:I

    const/16 v2, 0x42

    iput v2, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mFrameInterval:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mActiveHandle:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mPlayHeadPosition:F

    iput v2, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mFrameWidth:F

    iput v2, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mThumbWidth:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v3, p2

    iput v3, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mPlayHeadWidth:F

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v3, p2

    iput v3, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mHandleWidth:F

    iput v2, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mHandleHeight:F

    iput v2, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mHandleActiveHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr p2, v3

    iput p2, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mMinSelectionWidth:F

    iput p2, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mThumbSpacing:F

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mAuxBitmapRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mOutsideShadowPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mHandlePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v4, 0x7f060486

    invoke-virtual {p2, v4}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060487

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mOutsideShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mTouchAreaPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mTouchAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mTouchAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0604a2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Lcom/motorola/camera/ui/widgets/TrimSeekBar$GestureListener;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/widgets/TrimSeekBar$GestureListener;-><init>(Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mGestureListener:Lcom/motorola/camera/ui/widgets/TrimSeekBar$GestureListener;

    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mGestureListener:Lcom/motorola/camera/ui/widgets/TrimSeekBar$GestureListener;

    invoke-direct {p2, v5, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {p2, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    new-instance p2, Landroid/os/HandlerThread;

    const-string v5, "Animator"

    invoke-direct {p2, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    new-instance v5, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v5, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mPlaybackHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/ui/widgets/TrimSeekBar$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/TrimSeekBar$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mPlaybackListener:Lcom/motorola/camera/ui/widgets/TrimSeekBar$$ExternalSyntheticLambda1;

    new-instance p2, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;-><init>(Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->gestureListener:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;

    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->gestureDetector:Landroid/view/GestureDetector;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v6, 0x7f060485

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result v7

    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v7, Landroid/graphics/DashPathEffect;

    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result v8

    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result v9

    new-array v10, v6, [F

    aput v8, v10, v0

    aput v9, v10, v1

    invoke-direct {v7, v10, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->inactiveTrackPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result v7

    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v7, 0x7f060484

    invoke-virtual {p1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v7, Landroid/graphics/DashPathEffect;

    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result v8

    const/4 v9, 0x6

    invoke-virtual {p0, v9}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result v10

    new-array v11, v6, [F

    aput v8, v11, v0

    aput v10, v11, v1

    invoke-direct {v7, v11, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v9}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleHeight:F

    const/16 p2, 0xc

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleHeightActive:F

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->animatedHandleRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleTouchRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v2, 0x7f060405

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setColor(I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handlePaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->selectedFramesBorderPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->selectedFramesAreaPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeArea:Landroid/graphics/RectF;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->rangeListeners:Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    const/16 v2, 0xa

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->maximumRange:I

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->minimumRange:I

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    const/16 v3, 0x28

    if-eqz p2, :cond_1

    new-array p2, v6, [I

    aput v3, p2, v0

    const/16 v4, 0x32

    aput v4, p2, v1

    goto :goto_1

    :cond_1
    new-array p2, v6, [I

    aput v0, p2, v0

    aput v0, p2, v1

    :goto_1
    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->values:[I

    const/16 p2, 0x20

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->sliderHeight:I

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result v1

    float-to-int v1, v1

    const v3, 0x7f080336

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkv;->createTrackThumb(Landroid/content/Context;II)Lcom/motorola/camera/cli/content/CliPresentationHolder;

    move-result-object v3

    const v4, 0x7f080337

    invoke-static {p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkv;->createTrackThumb(Landroid/content/Context;II)Lcom/motorola/camera/cli/content/CliPresentationHolder;

    move-result-object p1

    filled-new-array {v3, p1}, [Lcom/motorola/camera/cli/content/CliPresentationHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/cli/content/CliPresentationHolder;

    sub-int/2addr v1, p2

    div-int/2addr v1, v6

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/motorola/camera/cli/content/CliPresentationHolder;->context:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->sliderTopPadding:I

    invoke-virtual {v5, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->setAutoPlay(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->setFrameCount(I)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->setSelectionStart(I)V

    const/16 p1, 0x55

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->setSelectionEnd(I)V

    :cond_2
    return-void
.end method

.method public static final access$animateState(Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->stateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->moveHandleActive:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f060406

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    :goto_1
    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->selectedFramesAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    filled-new-array {v4, v1}, [I

    move-result-object v1

    const-string v4, "color"

    invoke-static {v3, v4, v1}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget v3, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    if-eq v3, v2, :cond_3

    new-instance v2, Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v4, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v6, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v5

    sub-float/2addr v6, v7

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {v2, v4, v3, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v2

    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/animation/RectEvaluator;

    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->animatedHandleRect:Landroid/graphics/Rect;

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/motorola/camera/ui/widgets/TrimSeekBar$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/ui/widgets/TrimSeekBar$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/TrimSeekBar$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/ui/widgets/TrimSeekBar$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->stateAnimator:Landroid/animation/AnimatorSet;

    filled-new-array {v1, v0}, [Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->stateAnimator:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_4
    return-void
.end method


# virtual methods
.method public getEndTrimmingMin()F
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/cli/content/CliPresentationHolder;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->x:F

    return p0
.end method

.method public final getMaximumRange()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->maximumRange:I

    return p0
.end method

.method public final getMinimumRange()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->minimumRange:I

    return p0
.end method

.method public final getRangeCenterX()F
    .locals 4

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/cli/content/CliPresentationHolder;

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    iget-object v3, v3, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_2

    :cond_2
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    array-length p0, p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Empty collection can\'t be reduced."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public final getRangeListeners()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->rangeListeners:Ljava/util/HashSet;

    return-object p0
.end method

.method public getStartTrimmingMax()F
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/cli/content/CliPresentationHolder;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->x:F

    return p0
.end method

.method public final getValues()[I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->values:[I

    return-object p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/cli/content/CliPresentationHolder;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, Lcom/motorola/camera/cli/content/CliPresentationHolder;->eventListener:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/RippleDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v4, v4, Lcom/motorola/camera/cli/content/CliPresentationHolder;->context:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->sliderHeight:I

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    iget v4, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->sliderTopPadding:I

    int-to-float v4, v4

    add-float v7, v3, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    const/4 v11, 0x0

    invoke-virtual {p1, v3, v11, v4, v1}, Landroid/graphics/Canvas;->clipOutRect(FFFF)Z

    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v11, v4, v1}, Landroid/graphics/Canvas;->clipOutRect(FFFF)Z

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v6, v4

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v8, v3

    iget-object v10, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->inactiveTrackPaint:Landroid/graphics/Paint;

    move v9, v7

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {v5, p1, v11, v3, v1}, Landroid/graphics/Canvas;->clipOutRect(FFFF)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    const/4 v3, 0x1

    aget-object v4, v0, v3

    iget-object v4, v4, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, p1, v11, v4, v1}, Landroid/graphics/Canvas;->clipOutRect(FFFF)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v4

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v8, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    aget-object v4, v0, v2

    iget-object v4, v4, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, p1, v11, v4, v1}, Landroid/graphics/Canvas;->clipOutRect(FFFF)Z

    aget-object p1, v0, v3

    iget-object p1, p1, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {v5, p1, v11, v0, v1}, Landroid/graphics/Canvas;->clipOutRect(FFFF)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v0

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v8, p1

    iget-object v10, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeTrackPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->selectedFramesAreaPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeArea:Landroid/graphics/RectF;

    invoke-virtual {v5, v1, p1, p1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->selectedFramesBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1, p1, p1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result v0

    const/16 v1, 0x8

    new-array v1, v1, [F

    aput v11, v1, v2

    aput v11, v1, v3

    const/4 v2, 0x2

    aput v11, v1, v2

    aput v11, v1, p1

    const/4 p1, 0x4

    aput v0, v1, p1

    const/4 p1, 0x5

    aput v0, v1, p1

    const/4 p1, 0x6

    aput v0, v1, p1

    const/4 p1, 0x7

    aput v0, v1, p1

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->animatedHandleRect:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, p1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->downEventHandledByParent:Z

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-boolean v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->downEventHandledByParent:Z

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_5

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->gestureListener:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    iget v3, p1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    iget-object v5, p1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/cli/content/CliPresentationHolder;

    aget-object v3, v5, v3

    invoke-virtual {v3, v0}, Lcom/motorola/camera/cli/content/CliPresentationHolder;->setPressed(Z)V

    :cond_3
    iput v4, p1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    iput-boolean v0, p1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->moveHandleActive:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->moveRestricted:Z

    invoke-virtual {p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getRangeListeners()Ljava/util/HashSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;

    invoke-interface {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;->onStopTrackingTouch()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->updateUIElementsPosition(Z)V

    invoke-static {p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->access$animateState(Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V

    :cond_5
    return v1
.end method

.method public final restrictValues([I)V
    .locals 8

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    aget v1, p1, v0

    aget v3, p1, v2

    add-int v4, v1, v3

    div-int/lit8 v4, v4, 0x2

    sub-int v5, v1, v3

    iget v6, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->maximumRange:I

    if-gt v5, v6, :cond_0

    iget v7, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->minimumRange:I

    if-lt v5, v7, :cond_0

    if-ltz v3, :cond_0

    iget v7, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mTotalFrameCount:I

    :cond_0
    iget v7, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->minimumRange:I

    if-ge v5, v7, :cond_1

    move v5, v7

    :cond_1
    if-le v5, v6, :cond_2

    move v5, v6

    :cond_2
    if-gez v3, :cond_3

    aput v2, p1, v2

    aput v5, p1, v0

    return-void

    :cond_3
    iget p0, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mTotalFrameCount:I

    if-le v1, p0, :cond_4

    aput p0, p1, v0

    sub-int/2addr p0, v5

    aput p0, p1, v2

    return-void

    :cond_4
    div-int/lit8 v6, v6, 0x2

    sub-int v5, v4, v6

    if-ge v3, v5, :cond_5

    move v3, v5

    :cond_5
    div-int/lit8 v7, v7, 0x2

    sub-int v5, v4, v7

    if-le v3, v5, :cond_6

    move v3, v5

    :cond_6
    if-gez v3, :cond_7

    move v3, v2

    :cond_7
    aput v3, p1, v2

    add-int/2addr v6, v4

    if-le v1, v6, :cond_8

    move v1, v6

    :cond_8
    add-int/2addr v7, v4

    if-ge v1, v7, :cond_9

    move v1, v7

    :cond_9
    if-le v1, p0, :cond_a

    goto :goto_0

    :cond_a
    move p0, v1

    :goto_0
    aput p0, p1, v0

    return-void

    :cond_b
    aget v1, p1, v0

    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_c

    aget v2, p1, v3

    iget v4, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->minimumRange:I

    add-int/2addr v2, v4

    goto :goto_1

    :cond_c
    add-int/lit8 v4, v0, 0x1

    aget v4, p1, v4

    iget v5, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->maximumRange:I

    sub-int/2addr v4, v5

    if-gez v4, :cond_d

    goto :goto_1

    :cond_d
    move v2, v4

    :goto_1
    if-ltz v3, :cond_e

    aget v3, p1, v3

    iget v4, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->maximumRange:I

    add-int/2addr v3, v4

    iget p0, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mTotalFrameCount:I

    if-le v3, p0, :cond_f

    move v3, p0

    goto :goto_2

    :cond_e
    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->minimumRange:I

    sub-int/2addr v3, p0

    :cond_f
    :goto_2
    if-ge v1, v2, :cond_10

    move v1, v2

    :cond_10
    if-le v1, v3, :cond_11

    goto :goto_3

    :cond_11
    move v3, v1

    :goto_3
    aput v3, p1, v0

    return-void
.end method

.method public final setMaximumRange(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->maximumRange:I

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->values:[I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->restrictValues([I)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setMinimumRange(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->minimumRange:I

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->values:[I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->restrictValues([I)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setValues([I)V
    .locals 4

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->moveHandleActive:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_5

    array-length v0, p1

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    const-string/jumbo v0, "values array must have at least two values"

    goto :goto_0

    :cond_0
    aget v0, p1, v2

    aget v3, p1, v1

    if-le v0, v3, :cond_1

    const-string/jumbo v0, "values[1] must be greater than or equal values[0]"

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    const-string/jumbo v0, "values[0] must be greater than or equal 0"

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mTotalFrameCount:I

    if-lez v0, :cond_3

    if-le v3, v0, :cond_3

    const-string/jumbo v0, "values[1] must be less than or equal total frame count"

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    aget v0, p1, v1

    aget v1, p1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->maximumRange:I

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->rangeListeners:Ljava/util/HashSet;

    if-le v0, v1, :cond_6

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;

    invoke-interface {v1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;->onMaximumRangeLimitReached()V

    goto :goto_2

    :cond_6
    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->minimumRange:I

    if-ge v0, v1, :cond_7

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_7
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->restrictValues([I)V

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->values:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_8

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->values:[I

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;

    invoke-interface {v1, p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;->onValueChanged([I)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->updateUIElementsPosition(Z)V

    return-void
.end method

.method public final toPixels(I)F
    .locals 0

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    return p1
.end method

.method public final updateUIElementsPosition(Z)V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->sliderHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->sliderTopPadding:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Lcom/motorola/camera/cli/content/CliPresentationHolder;

    array-length v4, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x2

    if-ge v6, v4, :cond_2

    aget-object v9, v3, v6

    add-int/lit8 v10, v7, 0x1

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    iget-object v12, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->values:[I

    aget v7, v12, v7

    int-to-float v7, v7

    iget v12, v0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mFrameWidth:F

    mul-float/2addr v7, v12

    add-float/2addr v7, v11

    new-instance v11, Landroid/graphics/PointF;

    iget-object v12, v9, Lcom/motorola/camera/cli/content/CliPresentationHolder;->context:Ljava/lang/Object;

    check-cast v12, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    int-to-float v12, v12

    sub-float v12, v1, v12

    invoke-direct {v11, v7, v12}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v11, v9, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    iget-object v7, v9, Lcom/motorola/camera/cli/content/CliPresentationHolder;->context:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    iget v12, v9, Lcom/motorola/camera/cli/content/CliPresentationHolder;->orientation:I

    if-ge v11, v12, :cond_0

    move v11, v12

    :cond_0
    div-int/2addr v11, v8

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    if-ge v13, v12, :cond_1

    goto :goto_1

    :cond_1
    move v12, v13

    :goto_1
    div-int/2addr v12, v8

    new-instance v13, Landroid/graphics/RectF;

    iget-object v14, v9, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    check-cast v14, Landroid/graphics/PointF;

    iget v15, v14, Landroid/graphics/PointF;->x:F

    int-to-float v11, v11

    move/from16 v16, v2

    sub-float v2, v15, v11

    iget v14, v14, Landroid/graphics/PointF;->y:F

    int-to-float v12, v12

    const/16 v17, 0x0

    sub-float v5, v14, v12

    add-float/2addr v15, v11

    add-float/2addr v14, v12

    invoke-direct {v13, v2, v5, v15, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, v9, Lcom/motorola/camera/cli/content/CliPresentationHolder;->mainHandler:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v2, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v2, v9, Lcom/motorola/camera/cli/content/CliPresentationHolder;->presentationDeque:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v2, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v13, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget-object v5, v9, Lcom/motorola/camera/cli/content/CliPresentationHolder;->eventListener:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v5, v9

    int-to-float v8, v8

    div-float/2addr v5, v8

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v9, v11

    div-float/2addr v9, v8

    invoke-virtual {v13, v5, v9}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v13, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    invoke-virtual {v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    add-int/lit8 v6, v6, 0x1

    move v7, v10

    move/from16 v2, v16

    goto/16 :goto_0

    :cond_2
    move/from16 v16, v2

    const/16 v17, 0x0

    const/4 v1, 0x1

    aget-object v2, v3, v1

    iget-object v2, v2, Lcom/motorola/camera/cli/content/CliPresentationHolder;->presentationDeque:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    aget-object v4, v3, v17

    iget-object v4, v4, Lcom/motorola/camera/cli/content/CliPresentationHolder;->presentationDeque:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v5

    const/4 v5, 0x0

    cmpg-float v6, v2, v5

    if-gez v6, :cond_3

    int-to-float v6, v8

    div-float v7, v2, v6

    invoke-virtual {v4, v7, v5}, Landroid/graphics/RectF;->offset(FF)V

    aget-object v4, v3, v1

    iget-object v4, v4, Lcom/motorola/camera/cli/content/CliPresentationHolder;->presentationDeque:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/RectF;

    neg-float v2, v2

    div-float/2addr v2, v6

    invoke-virtual {v4, v2, v5}, Landroid/graphics/RectF;->offset(FF)V

    :cond_3
    aget-object v2, v3, v17

    iget-object v2, v2, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    aget-object v6, v3, v1

    iget-object v6, v6, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v7, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeArea:Landroid/graphics/RectF;

    invoke-virtual {v7, v2, v5, v6, v4}, Landroid/graphics/RectF;->set(FFFF)V

    aget-object v1, v3, v1

    iget-object v1, v1, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aget-object v2, v3, v17

    iget-object v2, v2, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float v3, v1, v2

    div-float v3, v3, v16

    sub-float/2addr v1, v2

    div-float v1, v1, v16

    iget-boolean v2, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->moveHandleActive:Z

    if-eqz v2, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    const/high16 v4, 0x3f400000    # 0.75f

    :goto_2
    mul-float/2addr v1, v4

    if-eqz v2, :cond_5

    iget v2, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleHeightActive:F

    goto :goto_3

    :cond_5
    iget v2, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleHeight:F

    :goto_3
    sub-float v4, v3, v1

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    add-float/2addr v3, v1

    add-float/2addr v2, v5

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v4, v5, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget v2, v7, Landroid/graphics/RectF;->right:F

    iget v3, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    const/16 v3, 0x24

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->toPixels(I)F

    move-result v3

    sub-float/2addr v3, v2

    int-to-float v2, v8

    div-float/2addr v3, v2

    float-to-int v2, v3

    if-gez v2, :cond_6

    move/from16 v2, v17

    :cond_6
    iget v3, v7, Landroid/graphics/RectF;->left:F

    int-to-float v2, v2

    sub-float/2addr v3, v2

    iget v4, v7, Landroid/graphics/RectF;->top:F

    iget v5, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v2

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleTouchRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v3, v4, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-boolean v2, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->moveHandleActive:Z

    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->animatedHandleRect:Landroid/graphics/Rect;

    if-nez v2, :cond_8

    iget v2, v0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_8

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    goto :goto_5

    :cond_8
    :goto_4
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    move/from16 v2, v17

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    :goto_5
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
