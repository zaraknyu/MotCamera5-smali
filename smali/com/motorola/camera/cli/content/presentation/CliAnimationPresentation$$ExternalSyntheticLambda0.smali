.class public final synthetic Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;->lottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_4

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CARTOON_SHUFFLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;->Companion:Landroidx/transition/Transition$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/transition/Transition$1;->getShuffleCartoons()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/AbstractPlatformRandom;

    invoke-virtual {v1}, Lkotlin/random/AbstractPlatformRandom;->getImpl()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;->lottieId:I

    goto :goto_2

    :cond_1
    const v0, 0x7f110009

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CARTOON_SELECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics$Kotlin;->toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_3

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v0, v1, v0

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;->FACE_EXPRESSION:Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;

    :goto_1
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;

    iget v0, v0, Lcom/motorola/camera/ui/controls_2020/settings/model/CartoonModel;->lottieId:I

    :goto_2
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
