.class public final Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;
.super Lcom/motorola/camera/arch/view/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/arch/view/BaseFragment<",
        "Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;",
        ">;",
        "Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;",
        "Lcom/motorola/camera/arch/view/BaseFragment;",
        "Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;",
        "Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;",
        "<init>",
        "()V",
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
.field public final hasCliCutout$delegate:Lkotlin/SynchronizedLazyImpl;

.field public viewBinding:Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/arch/view/BaseFragment;-><init>()V

    new-instance v0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->hasCliCutout$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method


# virtual methods
.method public final finishOnboarding()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SECOND_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SECOND_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/arch/view/BaseFragment;->eventListener:Lcom/motorola/camera/EventListener;

    if-eqz p0, :cond_2

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HELP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_2
    return-void
.end method

.method public final loadViewModel()Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;
    .locals 1

    new-instance v0, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->hasCliCutout$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-direct {v0, p0}, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;-><init>(Z)V

    return-object v0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/arch/view/BaseFragment;->viewModel:Lcom/motorola/camera/arch/view/BaseViewModel;

    check-cast p0, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;->onCreate(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/arch/view/BaseFragment;->viewModel:Lcom/motorola/camera/arch/view/BaseViewModel;

    check-cast p1, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;

    if-eqz p1, :cond_0

    iput-object p0, p1, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;->callback:Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;->$r8$clinit:I

    sget-object p3, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const p3, 0x7f0d003a

    invoke-static {p3, p1, p2}, Landroidx/databinding/ViewDataBinding;->inflateInternal(ILandroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->viewBinding:Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;

    iget-object p0, p1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final showNextPage()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->viewBinding:Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;->viewPager:Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;->isCurrentItemLast()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->finishOnboarding()V

    return-void

    :cond_0
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_2
    return-void
.end method

.method public final showOnboard(Ljava/util/ArrayList;)V
    .locals 7

    const-string v0, "onboardList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->viewBinding:Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;

    if-eqz v0, :cond_8

    iget-object v1, v0, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;->viewPager:Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, v0, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;->buttonNavigation:Landroid/widget/Button;

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, v0, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;->smallCliOnboardClose:Landroid/widget/ImageButton;

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->hasCliCutout$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    sget-boolean v4, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->viewBinding:Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;

    if-eqz v4, :cond_4

    iget-object v4, v4, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_4

    const/4 v6, -0x1

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_4
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->SECOND_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_0
    invoke-virtual {v1, p1}, Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;->setAdapterFromList(Ljava/util/List;)V

    new-instance p1, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$showOnboard$1;

    invoke-direct {p1, v1, v2, p0}, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$showOnboard$1;-><init>(Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;Landroid/widget/Button;Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;)V

    iget-object v4, v1, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/ArrayList;

    if-nez v4, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/ArrayList;

    :cond_6
    iget-object v4, v1, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {p1, p0, v4}, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;I)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz p1, :cond_8

    :cond_7
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p0}, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_8
    :goto_1
    return-void
.end method
