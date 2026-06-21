.class public Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0017\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference;",
        "Landroidx/preference/Preference;",
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


# instance fields
.field public lottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f04045b

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public getLottieTimeout()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getResource()Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onAttached()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0380

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.airbnb.lottie.LottieAnimationView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference;->lottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference;->getResource()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference;->lottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference;->getLottieTimeout()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference;->lottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference;->lottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference$setAnimationLoop$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference$setAnimationLoop$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object p1, p1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference;->lottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    :cond_3
    return-void
.end method
