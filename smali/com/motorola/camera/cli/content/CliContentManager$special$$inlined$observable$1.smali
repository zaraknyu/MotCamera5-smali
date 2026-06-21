.class public final Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;
.super Lkotlin/properties/ObservableProperty;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cli/content/CliContentManager;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;->this$0:Ljava/lang/Object;

    .line 1
    invoke-direct {p0, p2}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void

    .line 2
    :pswitch_0
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;->this$0:Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p2}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void

    .line 4
    :pswitch_1
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;->this$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0, p2}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;->this$0:Ljava/lang/Object;

    .line 6
    invoke-direct {p0, p1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public afterChange(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lkotlin/properties/ObservableProperty;->afterChange(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    const-string/jumbo v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/cli/content/CliContentManager;

    iget-boolean p3, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewSupported(Z)Z

    move-result p3

    if-eqz p3, :cond_1

    if-eq p2, p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->context:Landroid/content/Context;

    const-string p1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const-string p1, "getWindow(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p3, "screen_brightness_mode"

    invoke-static {p1, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const-string p3, "getAttributes(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    :cond_0
    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :catch_0
    :cond_1
    return-void

    :pswitch_1
    const-string/jumbo v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/cli/content/CliContentManager;

    if-eq p2, p1, :cond_2

    iget-boolean p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->changeDualPreviewContentStatus()V

    :cond_2
    return-void

    :pswitch_2
    const-string/jumbo v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/cli/content/CliContentManager;

    iget-boolean p3, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    if-nez p2, :cond_4

    if-eqz p1, :cond_4

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenAnimationEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->changeAnimationContentStatus()V

    :cond_3
    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->changeDualPreviewContentStatus()V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public beforeChange(Lkotlin/reflect/KProperty;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lkotlin/properties/ObservableProperty;->beforeChange(Lkotlin/reflect/KProperty;)V

    return-void

    :pswitch_0
    const-string/jumbo v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->isLocked:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot modify readonly DescriptorRendererOptions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
