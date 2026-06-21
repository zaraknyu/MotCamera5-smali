.class public final Landroidx/compose/foundation/layout/Arrangement$spacedBy$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $alignment:Landroidx/compose/ui/BiasAlignment$Horizontal;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/BiasAlignment$Horizontal;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/foundation/layout/Arrangement$spacedBy$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/foundation/layout/Arrangement$spacedBy$2;->$alignment:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Landroidx/compose/foundation/layout/Arrangement$spacedBy$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    iget-wide v0, p1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    check-cast p2, Landroidx/compose/ui/unit/LayoutDirection;

    const/16 p1, 0x20

    shr-long/2addr v0, p1

    long-to-int v0, v0

    iget-object p0, p0, Landroidx/compose/foundation/layout/Arrangement$spacedBy$2;->$alignment:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p2}, Landroidx/compose/ui/BiasAlignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result p0

    int-to-long v2, p0

    shl-long p0, v2, p1

    int-to-long v0, v1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    new-instance p2, Landroidx/compose/ui/unit/IntOffset;

    invoke-direct {p2, p0, p1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    return-object p2

    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Landroidx/compose/ui/unit/LayoutDirection;

    iget-object p0, p0, Landroidx/compose/foundation/layout/Arrangement$spacedBy$2;->$alignment:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroidx/compose/ui/BiasAlignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
