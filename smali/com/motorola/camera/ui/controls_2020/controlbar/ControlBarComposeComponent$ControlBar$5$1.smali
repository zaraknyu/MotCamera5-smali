.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$5$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$5$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$5$1;->$r8$classId:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$5$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    const-string v3, "$this$AnimatedVisibility"

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/animation/AnimatedVisibilityScope;

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

    invoke-virtual {p0, v2, p2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->SplitScreenSecondLine(ILandroidx/compose/runtime/ComposerImpl;)V

    return-object v1

    :pswitch_0
    check-cast p1, Landroidx/compose/animation/AnimatedVisibilityScope;

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->DetailsString(ILandroidx/compose/runtime/ComposerImpl;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
