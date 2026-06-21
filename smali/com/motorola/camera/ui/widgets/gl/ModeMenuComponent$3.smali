.class public final Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$3;
.super Lcom/motorola/camera/ui/widgets/gl/DragBehavior;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

.field public final synthetic this$0$1:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$3;->this$0$1:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;-><init>()V

    return-void
.end method


# virtual methods
.method public final drag(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "ORIGIN"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    const-string v4, "DELTA_VALUE"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    const-string v6, "ENABLE"

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$3;->this$0$1:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    invoke-virtual {v0, v3, v5, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->drag(Landroid/graphics/PointF;FZLcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    const-string v3, "SWITCH_CASE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/graphics/PointF;

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v0, "IS_TOUCHED"

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-virtual/range {v7 .. v16}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V

    return-void
.end method

.method public final onDragApplyValue(F)V
    .locals 0

    return-void
.end method

.method public final onDragEnd(F)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BACK_KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final onDragStart()V
    .locals 0

    return-void
.end method
