.class public final Lcom/airbnb/lottie/animation/content/ShapeContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;


# instance fields
.field public final hidden:Z

.field public isPathValid:Z

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final name:Ljava/lang/String;

.field public final path:Landroid/graphics/Path;

.field public final shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;

.field public final trimPaths:Lcom/motorola/camera/editor/parser/XMPParser;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapePath;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    new-instance v0, Lcom/motorola/camera/editor/parser/XMPParser;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/editor/parser/XMPParser;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->trimPaths:Lcom/motorola/camera/editor/parser/XMPParser;

    iget-object v0, p3, Lcom/airbnb/lottie/model/content/ShapePath;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->name:Ljava/lang/String;

    iget-boolean v0, p3, Lcom/airbnb/lottie/model/content/ShapePath;->hidden:Z

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->hidden:Z

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object p1, p3, Lcom/airbnb/lottie/model/content/ShapePath;->shapePath:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    new-instance p3, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;

    iget-object p1, p1, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {p3, p1}, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;-><init>(Ljava/util/List;)V

    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;

    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p3, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public final addValueCallback(Lcom/motorola/camera/CameraKpi;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->PATH:Landroid/graphics/Path;

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/motorola/camera/CameraKpi;)V

    :cond_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 4

    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->isPathValid:Z

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/motorola/camera/CameraKpi;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->hidden:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->isPathValid:Z

    return-object v2

    :cond_2
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    if-nez v0, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {v2, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->trimPaths:Lcom/motorola/camera/editor/parser/XMPParser;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/editor/parser/XMPParser;->apply(Landroid/graphics/Path;)V

    iput-boolean v3, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->isPathValid:Z

    return-object v2
.end method

.method public final onValueChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->isPathValid:Z

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public final resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/ArrayList;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/ArrayList;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    return-void
.end method

.method public final setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 5

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/content/Content;

    instance-of v2, v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    iget v3, v2, Lcom/airbnb/lottie/animation/content/TrimPathContent;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->trimPaths:Lcom/motorola/camera/editor/parser/XMPParser;

    iget-object v1, v1, Lcom/motorola/camera/editor/parser/XMPParser;->attributeParsers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    check-cast v1, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;

    iget-object v2, v1, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->roundedCorners:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;

    iput-object p2, p0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->shapeModifiers:Ljava/util/ArrayList;

    return-void
.end method
