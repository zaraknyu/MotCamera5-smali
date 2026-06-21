.class public final Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;
.super Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;
.source "SourceFile"


# instance fields
.field public animationContainer:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

.field public lottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;


# virtual methods
.method public final onOrientationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;->animationContainer:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->getCliOrientation()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public final onViewAdded()V
    .locals 4

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->PORTRAIT_LANDSCAPE_CLI:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v2, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v2, Ljava/util/EnumSet;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;->animationContainer:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    if-eqz v2, :cond_0

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;->setOrientation(I)V

    :cond_0
    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;->animationContainer:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->getCliOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;->setOrientation(I)V

    :cond_1
    new-instance v0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public final onViewInflated()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v2, 0x7f0a0072

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;->animationContainer:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    const v1, 0x7f0a00ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    :cond_1
    iput-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;->lottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_3

    sget-boolean p0, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-nez p0, :cond_2

    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_2
    const/4 p0, -0x1

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setCacheComposition(Z)V

    :cond_3
    return-void
.end method

.method public final onViewRemoved()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;->lottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;->lottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method

.method public final presentationLayoutRes()I
    .locals 0

    const p0, 0x7f0d0036

    return p0
.end method
