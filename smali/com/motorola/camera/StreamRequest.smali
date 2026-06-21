.class public final Lcom/motorola/camera/StreamRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mMaxSize:Ljava/lang/Object;

.field public mRatio:F


# direct methods
.method public constructor <init>(FLandroid/util/Size;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/StreamRequest;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/StreamRequest;->mRatio:F

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/StreamRequest;->mMaxSize:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/Matrices;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/StreamRequest;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/StreamRequest;->mMaxSize:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/StreamRequest;->$r8$classId:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 7
    iput v0, p0, Lcom/motorola/camera/StreamRequest;->mRatio:F

    const/4 v0, 0x0

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/value/Keyframe;

    iput-object p1, p0, Lcom/motorola/camera/StreamRequest;->mMaxSize:Ljava/lang/Object;

    return-void
.end method

.method public static getSpan(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    sub-float/2addr v0, p0

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method


# virtual methods
.method public getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/StreamRequest;->mMaxSize:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    return-object p0
.end method

.method public getEndProgress()F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/StreamRequest;->mMaxSize:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->getEndProgress()F

    move-result p0

    return p0
.end method

.method public getStartDelayProgress()F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/StreamRequest;->mMaxSize:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result p0

    return p0
.end method

.method public isCachedValueEnabled(F)Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/StreamRequest;->mRatio:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iput p1, p0, Lcom/motorola/camera/StreamRequest;->mRatio:F

    const/4 p0, 0x0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isValueChanged(F)Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/StreamRequest;->mMaxSize:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->isStatic()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/StreamRequest;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StreamRequest{mMaxSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/StreamRequest;->mMaxSize:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/StreamRequest;->mRatio:F

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
