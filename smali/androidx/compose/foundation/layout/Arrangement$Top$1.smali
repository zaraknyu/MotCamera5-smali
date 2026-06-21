.class public final Landroidx/compose/foundation/layout/Arrangement$Top$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/layout/Arrangement$Vertical;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/layout/Arrangement$Top$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final arrange(Landroidx/compose/ui/unit/Density;I[I[I)V
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/Arrangement$Top$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    invoke-static {p2, p3, p4, p0}, Landroidx/compose/foundation/layout/Arrangement;->placeRightOrBottom$foundation_layout_release(I[I[IZ)V

    return-void

    :pswitch_0
    const/4 p0, 0x0

    invoke-static {p3, p4, p0}, Landroidx/compose/foundation/layout/Arrangement;->placeLeftOrTop$foundation_layout_release([I[IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/Arrangement$Top$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "Arrangement#Bottom"

    return-object p0

    :pswitch_0
    const-string p0, "Arrangement#Top"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
