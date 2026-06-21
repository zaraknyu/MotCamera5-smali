.class public final synthetic Lcom/motorola/camera/ui/compose/CustomModifiersKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/ui/layout/Placeable;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/compose/CustomModifiersKt$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/compose/CustomModifiersKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/layout/Placeable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/compose/CustomModifiersKt$$ExternalSyntheticLambda1;->$r8$classId:I

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    packed-switch v0, :pswitch_data_0

    const-string v0, "$this$layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/CustomModifiersKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/layout/Placeable;

    invoke-static {p1, p0, v0, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    const-string v0, "$this$layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/CustomModifiersKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/layout/Placeable;

    iget v0, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    neg-int v1, v0

    iget v2, p0, Landroidx/compose/ui/layout/Placeable;->width:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    invoke-static {p1, p0, v1, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
