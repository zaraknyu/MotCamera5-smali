.class public final Landroidx/compose/ui/node/DepthSortedSetKt$DepthComparator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/node/DepthSortedSetKt$DepthComparator$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/node/DepthSortedSetKt$DepthComparator$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/DepthSortedSetKt$DepthComparator$1;-><init>(I)V

    sput-object v0, Landroidx/compose/ui/node/DepthSortedSetKt$DepthComparator$1;->INSTANCE:Landroidx/compose/ui/node/DepthSortedSetKt$DepthComparator$1;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/node/DepthSortedSetKt$DepthComparator$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget p0, p0, Landroidx/compose/ui/node/DepthSortedSetKt$DepthComparator$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    check-cast p2, Landroidx/compose/ui/node/LayoutNode;

    iget p0, p2, Landroidx/compose/ui/node/LayoutNode;->depth:I

    iget v0, p1, Landroidx/compose/ui/node/LayoutNode;->depth:I

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    :goto_0
    return p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    check-cast p2, Landroidx/compose/ui/node/LayoutNode;

    iget p0, p1, Landroidx/compose/ui/node/LayoutNode;->depth:I

    iget v0, p2, Landroidx/compose/ui/node/LayoutNode;->depth:I

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
