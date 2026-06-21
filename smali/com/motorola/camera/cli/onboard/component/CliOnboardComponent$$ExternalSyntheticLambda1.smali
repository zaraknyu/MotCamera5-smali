.class public final synthetic Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;->remove()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;->remove()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;->cliOnboardFragment:Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->viewBinding:Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;->viewPager:Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/motorola/camera/cli/onboard/adapter/OnboardAdapter;

    iget-object v1, v1, Lcom/motorola/camera/cli/onboard/adapter/OnboardAdapter;->onboardList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    const-string p0, "cliOnboardFragment"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_2
    new-instance v0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string v2, "getLayoutManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v0}, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "CliOnboardFragment.has_cli_cutout"

    invoke-virtual {v4, v5, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;->cliOnboardFragment:Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;->cliOnboardFragment:Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    goto :goto_2

    :cond_7
    move-object v5, v4

    :goto_2
    instance-of v6, v5, Landroidx/fragment/app/FragmentActivity;

    if-eqz v6, :cond_8

    move-object v4, v5

    check-cast v4, Landroidx/fragment/app/FragmentActivity;

    :cond_8
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v5

    const-class v6, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v5, v4}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const-class v4, Landroidx/fragment/app/BackStackRecord;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const v6, 0x7f0a01d5

    invoke-virtual {v5, v6, v0, v4}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    :cond_a
    :goto_3
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz v0, :cond_d

    :cond_b
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_c
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_d

    new-instance v1, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;

    const/16 v2, 0xb

    invoke-direct {v1, v2, p0}, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    return-void

    :cond_e
    const-string p0, "cliOnboardFragment"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
