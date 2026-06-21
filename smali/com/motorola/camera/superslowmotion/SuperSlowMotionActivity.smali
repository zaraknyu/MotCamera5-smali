.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;
.super Lcom/motorola/camera/ActivityBase;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ActivityStarter;
.implements Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;",
        "Lcom/motorola/camera/ActivityBase;",
        "Lcom/motorola/camera/ActivityStarter;",
        "Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;",
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


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public dialog:Landroid/app/AlertDialog;

.field public final hideRunnable:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda5;

.field public isSplitScreen:Z

.field public tooltip:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

.field public final tooltipSetting$delegate:Lkotlin/SynchronizedLazyImpl;

.field public viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

.field public viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/ActivityBase;-><init>()V

    new-instance v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    iput-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->hideRunnable:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda5;

    new-instance v0, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->tooltipSetting$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->tooltipSetting$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/Setting;

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v2, "superSlowMotionTrimBar"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V

    iput-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->tooltip:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    invoke-virtual {v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->getPosition()Landroid/graphics/Point;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    sget-object v5, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_CENTER:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    sget-object v6, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;->PRIMARY:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;

    iget-object v0, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->anchor:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "viewBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    return-void
.end method

.method public final onBackInvoked()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->SETTING_UP:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->PROCESSING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->showSkipDialog()V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->showCancelDialog()V

    return-void

    :cond_3
    const-string/jumbo p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Lcom/motorola/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->registerClient(Ljava/lang/Object;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x200000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/Util;->setupWindow(Landroid/view/Window;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_22

    const-string v1, "com.motorola.superslowmotion.intent.mediaFile"

    const-class v2, Lcom/motorola/camera/storage/MediaFile$Memento;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/storage/MediaFile$Memento;

    if-eqz v1, :cond_21

    invoke-static {v1}, Lcom/motorola/camera/storage/MediaFile$Companion;->fromMemento(Lcom/motorola/camera/storage/MediaFile$Memento;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v3

    const-string v1, "com.motorola.superslowmotion.intent.videoName"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_20

    const-string v1, "com.motorola.superslowmotion.intent.videoDate"

    const-wide/16 v5, -0x1

    invoke-virtual {p1, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-lez v9, :cond_1f

    const-string v9, "com.motorola.superslowmotion.intent.targetVideoDate"

    invoke-virtual {p1, v9, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v9, v5, v7

    if-lez v9, :cond_1e

    const-string v9, "com.motorola.superslowmotion.intent.videoFrameRate"

    const/4 v11, -0x1

    invoke-virtual {p1, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    int-to-long v12, v9

    cmp-long v10, v12, v7

    if-lez v10, :cond_1d

    const-string v10, "com.motorola.superslowmotion.intent.slowDownRate"

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    int-to-long v12, v10

    cmp-long p1, v12, v7

    if-lez p1, :cond_1c

    move-wide v7, v5

    move-wide v5, v1

    new-instance v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    invoke-direct/range {v2 .. v10}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;-><init>(Lcom/motorola/camera/storage/MediaFile;Ljava/lang/String;JJII)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->$r8$clinit:I

    sget-object v1, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const v1, 0x7f0d0113

    const/4 v3, 0x0

    invoke-static {v1, p1, v3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(ILandroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    new-instance p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$Factory;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$Factory;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v2

    new-instance v4, Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-direct {v4, v1, p1, v2}, Landroidx/media3/extractor/text/pgs/PgsParser;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    const-class p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, p1}, Landroidx/media3/extractor/text/pgs/PgsParser;->getViewModel$lifecycle_viewmodel_release(Ljava/lang/String;Lkotlin/reflect/KClass;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    const-string/jumbo v2, "viewBinding"

    if-eqz v1, :cond_1a

    invoke-virtual {v1, p1}, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->setViewModel(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz p1, :cond_19

    iget-object v1, p1, Landroidx/databinding/ViewDataBinding;->mLifecycleOwner:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    iget-object v4, p0, Landroidx/activity/ComponentActivity;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    if-ne v1, p0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/activity/ComponentActivity;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v5, p1, Landroidx/databinding/ViewDataBinding;->mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

    invoke-virtual {v1, v5}, Landroidx/lifecycle/LifecycleRegistry;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    iput-object p0, p1, Landroidx/databinding/ViewDataBinding;->mLifecycleOwner:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    iget-object v1, p1, Landroidx/databinding/ViewDataBinding;->mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

    if-nez v1, :cond_2

    new-instance v1, Landroidx/databinding/ViewDataBinding$OnStartListener;

    invoke-direct {v1, p1}, Landroidx/databinding/ViewDataBinding$OnStartListener;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object v1, p1, Landroidx/databinding/ViewDataBinding;->mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

    :cond_2
    iget-object v1, p1, Landroidx/databinding/ViewDataBinding;->mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

    invoke-virtual {v4, v1}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object p1, p1, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    array-length v1, p1

    move v5, v0

    :goto_0
    if-ge v5, v1, :cond_4

    aget-object v6, p1, v5

    if-eqz v6, :cond_3

    iget-object v6, v6, Landroidx/databinding/WeakListener;->mObservable:Landroidx/databinding/ViewDataBinding$LiveDataListener;

    invoke-virtual {v6, p0}, Landroidx/databinding/ViewDataBinding$LiveDataListener;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Landroid/util/Size;

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz p1, :cond_18

    iget-object p1, p1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayer:Landroidx/media3/ui/PlayerView;

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    const-string/jumbo v5, "viewModel"

    if-eqz v1, :cond_17

    iget-object v1, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    iget-object v1, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p1, v1}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz p1, :cond_16

    iget-object p1, p1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->setRestrictPlayheadPosition(Z)V

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz p1, :cond_15

    iget-object p1, p1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getRangeListeners()Ljava/util/HashSet;

    move-result-object p1

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)V

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz p1, :cond_14

    iget-object p1, p1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)V

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->setOnTimelineEditCallback(Lcom/motorola/camera/ui/widgets/TrimSeekBar$OnTimelineEditCallback;)V

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz p1, :cond_13

    iget-object p1, p1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    new-instance v1, Lcom/motorola/camera/ui/DownUpDetector;

    const/4 v6, 0x5

    invoke-direct {v1, v6, p0}, Lcom/motorola/camera/ui/DownUpDetector;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->setOnTrimCallback(Lcom/motorola/camera/ui/widgets/TrimSeekBar$OnTrimCallback;)V

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz p1, :cond_12

    iget-object p1, p1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)V

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->setOnFrameUpdateCallback(Lcom/motorola/camera/ui/widgets/TrimSeekBar$OnFrameUpdateCallback;)V

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz p1, :cond_11

    iget-object p1, p1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v1, "superSlowMotionTrimBar"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->tooltip:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->getPosition()Landroid/graphics/Point;

    move-result-object v1

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v6, v1, v11, v11}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    goto :goto_2

    :cond_5
    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$doOnLayout$1;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$doOnLayout$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p1, :cond_10

    iget-object p1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->previews:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p1, :cond_f

    iget-object p1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingDone:Landroidx/lifecycle/MediatorLiveData;

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;

    const/4 v6, 0x1

    invoke-direct {v1, p0, v6}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p1, :cond_e

    iget-object p1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingError:Landroidx/lifecycle/MediatorLiveData;

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;

    const/4 v7, 0x2

    invoke-direct {v1, p0, v7}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->editControlsVisible:Landroidx/lifecycle/MediatorLiveData;

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;

    const/4 v5, 0x3

    invoke-direct {v1, p0, v5}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz p1, :cond_c

    iget-object p1, p1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionSkipButton:Landroid/widget/Button;

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v6}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz p1, :cond_a

    iget-object p1, p1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    const-string v1, "getRoot(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->updateUiForSplitScreen(Z)V

    goto :goto_3

    :cond_7
    new-instance v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$doOnLayout$1;

    invoke-direct {v0, p0, v6}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$doOnLayout$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_3
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz p1, :cond_9

    iget-object p1, p1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    invoke-direct {v0, v6, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    invoke-static {v4}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$14;

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$14;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, v3, v1, v7}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;)V

    sget p1, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->$r8$clinit:I

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$OnBackInvokedCallbackHolder;->holder:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    invoke-virtual {p1, p0, p0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->registerCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V

    return-void

    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_d
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_e
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_f
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_10
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_11
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_12
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_13
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_14
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_15
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_16
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_17
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_18
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_19
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_1a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing slow down rate"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing video frame rate"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing target video date"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing video date"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing video name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing media file"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Intent is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onDestroy()V

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->unregisterClient(Ljava/lang/Object;)V

    sget v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->$r8$clinit:I

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$OnBackInvokedCallbackHolder;->holder:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    invoke-virtual {v0, p0, p0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->unRegisterCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V

    return-void
.end method

.method public final onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "newConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    iget-object p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->contentHidden:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->dialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const p1, 0x7f0803a3

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void

    :cond_2
    const-string/jumbo p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public final onPause()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->setPlayWhenReady(Z)V

    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onPause()V

    return-void

    :cond_0
    const-string/jumbo p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onResume()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->updateUiForSplitScreen(Z)V

    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onResume()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->tooltip:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->tooltip:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onStop()V

    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    return-void
.end method

.method public final showCancelDialog()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->cancelRequestOngoing:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120526

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f120524

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda7;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    const v3, 0x7f1200d1

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    const v1, 0x7f120525

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->dialog:Landroid/app/AlertDialog;

    iget-boolean p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->isSplitScreen:Z

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final showSkipDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120537

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->data:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    iget v1, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f120535

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1200d1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda7;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    const v2, 0x7f120536

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->dialog:Landroid/app/AlertDialog;

    iget-boolean p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->isSplitScreen:Z

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/motorola/camera/utility/ColorUtil;->launchGallery(Landroidx/activity/ComponentActivity;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    return-void
.end method

.method public final updateUiForSplitScreen(Z)V
    .locals 8

    iget-boolean v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->isSplitScreen:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "viewBinding"

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0028

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v4

    iget-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v4, :cond_1

    iget-object v4, v4, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v5, :cond_0

    iget-object v5, v5, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    add-float/2addr v4, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f07055c

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr v4, v0

    move v0, v2

    move v5, v4

    goto :goto_1

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v0, :cond_9

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070559

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070562

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    add-float/2addr v6, v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f070561

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v4, v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    :goto_1
    iget-object v6, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v6, :cond_8

    iget-object v6, v6, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPreviewTopGuideline:Landroidx/constraintlayout/widget/Guideline;

    const-string/jumbo v7, "superSlowMotionPreviewTopGuideline"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6, p1}, Lcom/motorola/camera/utility/ColorUtil;->animatedSetGuidelineBegin(ILandroidx/constraintlayout/widget/Guideline;Z)V

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPreviewBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    const-string/jumbo v6, "superSlowMotionPreviewBottomGuideline"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    float-to-int v4, v4

    invoke-static {v4, v0, p1}, Lcom/motorola/camera/utility/ColorUtil;->animatedSetGuidelineEnd(ILandroidx/constraintlayout/widget/Guideline;Z)V

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    const-string/jumbo v1, "superSlowMotionProcessingBottomGuideline"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    float-to-int v1, v5

    invoke-static {v1, v0, p1}, Lcom/motorola/camera/utility/ColorUtil;->animatedSetGuidelineEnd(ILandroidx/constraintlayout/widget/Guideline;Z)V

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->dialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-boolean p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->isSplitScreen:Z

    if-eqz p0, :cond_4

    const/16 v2, 0x30

    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/Window;->setGravity(I)V

    :cond_5
    return-void

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
