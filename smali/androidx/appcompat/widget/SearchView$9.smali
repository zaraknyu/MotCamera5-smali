.class public final Landroidx/appcompat/widget/SearchView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/SearchView$9;->$r8$classId:I

    iput-object p2, p0, Landroidx/appcompat/widget/SearchView$9;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onNothingSelected$androidx$appcompat$widget$ListPopupWindow$3(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method private final onNothingSelected$androidx$appcompat$widget$SearchView$9(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method private final onNothingSelected$androidx$preference$DropDownPreference$1(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method private final onNothingSelected$com$motorola$camera$ui$uicomponents$SceneDetectionDebugComponent$inflateViewStub$1(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget p2, p0, Landroidx/appcompat/widget/SearchView$9;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    const-string p2, "null cannot be cast to non-null type android.widget.Spinner"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/Spinner;

    sget-object p2, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->factory$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/scenedetection/factory/SceneFactory;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type com.motorola.camera.scenedetection.scene.Scene.Type"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$9;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/SceneDetectionDebugComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getScene(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Z)Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object p1

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p2

    sget-object p3, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p3, p2}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupported(Lcom/motorola/camera/settings/CameraType;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "mEventHandler"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    sget-object p3, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne p2, p3, :cond_1

    sget-object p2, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/motorola/camera/scenedetection/scene/Scene;->getPersistOnLensSwitch()Z

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    sget-object p2, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    sput-object p1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_3
    :goto_2
    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$9;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/DropDownPreference;

    if-ltz p3, :cond_4

    iget-object p1, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object p1, p1, p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/io/Serializable;)Z

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_4
    return-void

    :pswitch_1
    const/4 p1, -0x1

    if-eq p3, p1, :cond_5

    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$9;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/ListPopupWindow;

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    if-eqz p0, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/DropDownListView;->setListSelectionHidden(Z)V

    :cond_5
    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$9;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/SearchView;->onItemSelected(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/SearchView$9;->$r8$classId:I

    return-void
.end method
