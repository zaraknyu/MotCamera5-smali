.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

.field public final synthetic f$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;Ljava/util/ArrayList;Ljava/util/List;II)V
    .locals 0

    iput p6, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda9;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda9;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda9;->f$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda9;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda9;->f$3:Ljava/util/List;

    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda9;->f$4:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda9;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    move-object v2, p1

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    const-string p1, "$this$LazyRow"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda9;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda9;->f$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda9;->f$2:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda9;->f$3:Ljava/util/List;

    iget v6, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda9;->f$4:I

    invoke-virtual/range {v1 .. v6}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->items(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;Ljava/util/ArrayList;Ljava/util/List;I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    const-string p1, "$this$LazyColumn"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda9;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda9;->f$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda9;->f$2:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda9;->f$3:Ljava/util/List;

    iget v5, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda9;->f$4:I

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->items(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;Ljava/util/ArrayList;Ljava/util/List;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
