.class public final Landroidx/compose/foundation/ScrollNode$applySemantics$accessibilityScrollState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/compose/foundation/ScrollNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/ScrollNode;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/foundation/ScrollNode$applySemantics$accessibilityScrollState$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/foundation/ScrollNode$applySemantics$accessibilityScrollState$1;->this$0:Landroidx/compose/foundation/ScrollNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/ScrollNode$applySemantics$accessibilityScrollState$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/foundation/ScrollNode$applySemantics$accessibilityScrollState$1;->this$0:Landroidx/compose/foundation/ScrollNode;

    iget-object p0, p0, Landroidx/compose/foundation/ScrollNode;->state:Landroidx/compose/foundation/ScrollState;

    iget-object p0, p0, Landroidx/compose/foundation/ScrollState;->_maxValueState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/foundation/ScrollNode$applySemantics$accessibilityScrollState$1;->this$0:Landroidx/compose/foundation/ScrollNode;

    iget-object p0, p0, Landroidx/compose/foundation/ScrollNode;->state:Landroidx/compose/foundation/ScrollState;

    iget-object p0, p0, Landroidx/compose/foundation/ScrollState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
