.class public final synthetic Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda7;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    iget-boolean v1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x0

    iput-boolean p0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->controlPanelValues:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->onSettingIntercept:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    iget-object v5, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->eventHandler:Lcom/motorola/camera/EventListener;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v7, v6, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->SETTINGS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SETTINGS_LIST_OPENED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {v5, v7}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_1
    iget-boolean v7, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->ignoreClicks:Z

    if-nez v7, :cond_d

    iget-boolean v7, v6, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-nez v7, :cond_d

    iget-object v7, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object v7, v6, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    sget-object v8, Lcom/motorola/camera/settings/Setting$UpdateType;->NONE:Lcom/motorola/camera/settings/Setting$UpdateType;

    const/4 v9, 0x0

    if-eq v7, v8, :cond_3

    move v7, v3

    goto :goto_0

    :cond_3
    move v7, v9

    :goto_0
    iput-boolean v7, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->ignoreClicks:Z

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v10}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-interface {v5}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v10

    invoke-static {v2, v1, v10}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    iget v10, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->controlPanelInteractions:I

    add-int/2addr v10, v3

    iput v10, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->controlPanelInteractions:I

    iget-object v0, v6, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    sget-object v3, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    if-eq v0, v3, :cond_7

    sget-object v3, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_RESTART:Lcom/motorola/camera/settings/Setting$UpdateType;

    if-eq v0, v3, :cond_7

    sget-object v3, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_REOPEN:Lcom/motorola/camera/settings/Setting$UpdateType;

    if-ne v0, v3, :cond_6

    goto :goto_1

    :cond_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "PREVIOUS_VALUE"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SETTING"

    iget-object v4, v6, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MODE"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "SETTING_UPDATE_TYPE"

    iget-object v4, v6, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v3, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->updateTenBitModeSwitchCase(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CONTROL_PANEL_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v3, v4, v0, v9}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {v5, v3}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_2
    invoke-interface {v5}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldDisplayZoomLimitedToast()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRangeLimitedDueToNoFastFrameRate(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_9
    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->setting:Lcom/motorola/camera/settings/Setting;

    iget-object v2, v0, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    iget-object v3, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_a

    const v0, 0x7f120444

    goto :goto_3

    :cond_a
    const v0, 0x7f120445

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :cond_b
    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->getString(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "getDefault(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "toUpperCase(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    const/4 p0, 0x0

    :goto_5
    iget p1, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->title:I

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v2, p1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 p1, 0x5

    iput p1, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    iput-object p0, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mTextDescriptionStr:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_d
    :goto_6
    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/util/Pair;

    new-instance v1, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    iget-object v0, v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mResource:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const-string v2, "mResource"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string/jumbo v2, "second"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/content/Intent;

    invoke-direct {v1, v0, p0}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->onClick(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
