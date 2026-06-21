.class public final synthetic Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    iget v0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :goto_0
    sput-boolean v3, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionEnable:Z

    return-object v4

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->mNormalBtn:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;

    sget v2, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->$r8$clinit:I

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->updateIdText()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->mDebugBtn:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->updateIdText()V

    return-object v1

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->dismiss()V

    return-object v4

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;->getCutoutsCoordinates()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-object v4

    :pswitch_4
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCapturePreviewSwapTooltip;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCapturePreviewSwapTooltip;->showImpl$2()V

    return-object v4

    :pswitch_5
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->showImpl$1()V

    return-object v4

    :pswitch_6
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->showImpl()V

    return-object v4

    :pswitch_7
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    sget v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->$r8$clinit:I

    const v0, 0x7f0a047f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-object v4

    :pswitch_8
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->setControlPanelItemExpanded(Z)V

    return-object v4

    :pswitch_9
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->LISTENED_VISIBILITY_NOTIFIERS:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->otherComponentsVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$otherComponentsVisibilityListener$1;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;-><init>(Ljava/util/List;Ljava/lang/ref/WeakReference;)V

    return-object v0

    :pswitch_a
    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-object v4

    :pswitch_b
    check-cast p0, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponentViewModel;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/compose/component/pantone/PantoneComponentViewModel;->hidePantone()V

    return-object v4

    :pswitch_c
    check-cast p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "CliOnboardFragment.has_cli_cutout"

    invoke-virtual {p0, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p0, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz v1, :cond_3

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v1, 0x7f11002e

    const v3, 0x7f120348

    invoke-direct {p0, v1, v3, v2}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(IIZ)V

    new-instance v1, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v3, 0x7f110029

    const v4, 0x7f120344

    invoke-direct {v1, v3, v4, v2}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(IIZ)V

    new-instance v3, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v4, 0x7f110028

    const v5, 0x7f120343

    invoke-direct {v3, v4, v5, v2}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(IIZ)V

    new-instance v4, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v5, 0x7f11002b

    const v6, 0x7f120346

    invoke-direct {v4, v5, v6, v2}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(IIZ)V

    filled-new-array {p0, v1, v3, v4}, [Lcom/motorola/camera/cli/onboard/model/Onboard;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    :cond_2
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SECOND_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v3, 0x7f11002a

    const v4, 0x7f120345

    invoke-direct {v1, v3, v4, v2}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(IIZ)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v3, 0x7f11002c

    const v4, 0x7f120347

    invoke-direct {v1, v3, v4, v2}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(IIZ)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    :cond_3
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/settings/CaptureIntent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "wiggle_gesture"

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/settings/CaptureIntent;->hasLaunchSource(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;->hasCliCutout:Z

    if-eqz v1, :cond_6

    :cond_4
    iget-boolean v1, p0, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;->hasCliCutout:Z

    new-instance v4, Lcom/motorola/camera/cli/onboard/model/Onboard;

    if-eqz v1, :cond_5

    const v1, 0x7f110027

    goto :goto_1

    :cond_5
    const v1, 0x7f0800e4

    :goto_1
    const v5, 0x7f1201fa

    invoke-direct {v4, v1, v5, v2}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(IIZ)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-boolean v1, p0, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;->hasCliCutout:Z

    new-instance v4, Lcom/motorola/camera/cli/onboard/model/Onboard;

    if-eqz v1, :cond_7

    const v5, 0x7f110025

    goto :goto_2

    :cond_7
    const v5, 0x7f0800d3

    :goto_2
    const v6, 0x7f12033d

    invoke-direct {v4, v5, v6, v2}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(IIZ)V

    new-instance v5, Lcom/motorola/camera/cli/onboard/model/Onboard;

    if-eqz v1, :cond_8

    const v1, 0x7f110026

    goto :goto_3

    :cond_8
    const v1, 0x7f0800e0

    :goto_3
    const v6, 0x7f12033e

    invoke-direct {v5, v1, v6, v2}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(IIZ)V

    filled-new-array {v4, v5}, [Lcom/motorola/camera/cli/onboard/model/Onboard;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-boolean p0, p0, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;->hasCliCutout:Z

    if-eqz p0, :cond_9

    new-instance p0, Lcom/motorola/camera/cli/onboard/model/Onboard;

    invoke-direct {p0, v3, v3, v3}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(IIZ)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    return-object v0

    :pswitch_e
    check-cast p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    const v0, 0x7f0a0368

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    return-object p0

    :pswitch_f
    check-cast p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->presentationDeque:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_b
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clear()V

    return-object v4

    :pswitch_10
    check-cast p0, Lcom/motorola/camera/cli/content/CliContentViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v3, v2}, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/cli/content/CliContentViewModel;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    return-object v4

    :pswitch_11
    check-cast p0, Lcom/motorola/camera/background/service/jms/db/TransactionDataBase_Impl;

    new-instance v0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl;

    invoke-direct {v0, p0}, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    return-object v0

    :pswitch_12
    check-cast p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase_Impl;

    new-instance v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;

    invoke-direct {v0, p0}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    return-object v0

    :pswitch_13
    check-cast p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl;

    new-instance v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;

    invoke-direct {v0, p0}, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    return-object v0

    :pswitch_14
    check-cast p0, Landroidx/work/impl/WorkManagerImpl;

    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    iget-object v1, p0, Landroidx/work/impl/WorkManagerImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroidx/work/impl/background/systemjob/JobSchedulerExtKt;->getWmJobScheduler(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobScheduler;->cancelAll()V

    const-string v2, "jobscheduler"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    invoke-static {v1, v2}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->getPendingJobs(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->cancelJobById(Landroid/app/job/JobScheduler;I)V

    goto :goto_5

    :cond_c
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v1

    iget-object v2, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v1, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/work/impl/model/WorkTagDao_Impl$2;

    invoke-virtual {v1}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;

    move-result-object v3

    :try_start_0
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;->executeUpdateDelete()I

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1, v3}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;)V

    iget-object v1, p0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    invoke-static {v1, v0, p0}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-object v4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_6
    invoke-virtual {v1, v3}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;)V

    throw p0

    :pswitch_15
    check-cast p0, Landroidx/work/impl/WorkContinuationImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/work/impl/utils/EnqueueRunnable;->enqueue(Landroidx/work/impl/WorkContinuationImpl;)V

    return-object v4

    :pswitch_16
    check-cast p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->name:Ljava/lang/String;

    const/16 v1, 0x17

    if-eqz v0, :cond_d

    iget-boolean v2, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->useNoBackupDirectory:Z

    if-eqz v2, :cond_d

    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->context:Landroid/content/Context;

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "getNoBackupFilesDir(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    iget-object v7, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->context:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroidx/room/ObservedTableVersions;

    invoke-direct {v9, v1, v3}, Landroidx/room/ObservedTableVersions;-><init>(IB)V

    iget-object v10, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->callback:Landroidx/media3/decoder/Buffer;

    iget-boolean v11, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->allowDataLossOnRecovery:Z

    invoke-direct/range {v6 .. v11}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/room/ObservedTableVersions;Landroidx/media3/decoder/Buffer;Z)V

    goto :goto_7

    :cond_d
    new-instance v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    move v2, v1

    iget-object v1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->context:Landroid/content/Context;

    move v4, v2

    iget-object v2, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->name:Ljava/lang/String;

    move v5, v3

    new-instance v3, Landroidx/room/ObservedTableVersions;

    invoke-direct {v3, v4, v5}, Landroidx/room/ObservedTableVersions;-><init>(IB)V

    iget-object v4, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->callback:Landroidx/media3/decoder/Buffer;

    iget-boolean v5, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->allowDataLossOnRecovery:Z

    invoke-direct/range {v0 .. v5}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/room/ObservedTableVersions;Landroidx/media3/decoder/Buffer;Z)V

    move-object v6, v0

    :goto_7
    iget-boolean p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->writeAheadLoggingEnabled:Z

    invoke-virtual {v6, p0}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-object v6

    :pswitch_17
    move v5, v3

    check-cast p0, Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Landroidx/savedstate/Recreator;

    invoke-direct {v1, v5, p0}, Landroidx/savedstate/Recreator;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-object v4

    :pswitch_18
    check-cast p0, Lcom/tinder/StateMachine;

    const-string v0, ":memory:"

    invoke-virtual {p0, v0}, Lcom/tinder/StateMachine;->open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p0, Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0}, Landroidx/room/SharedSQLiteStatement;->createNewStatement()Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-static {p0}, Landroidx/lifecycle/LifecycleKt;->getSavedStateHandlesVM(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/SavedStateHandlesVM;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
