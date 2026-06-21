.class public final Landroidx/compose/runtime/changelist/Operation$RemoveNode;
.super Landroidx/compose/runtime/changelist/Operation;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/changelist/Operation$RemoveNode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/runtime/changelist/Operation$RemoveNode;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Landroidx/compose/runtime/changelist/Operation;-><init>(III)V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$RemoveNode;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$RemoveNode;

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/collection/CircularArray;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/internal/RememberEventDispatcher;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/collection/CircularArray;->getInt(I)I

    move-result p0

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroidx/collection/CircularArray;->getInt(I)I

    move-result p1

    invoke-interface {p2, p0, p1}, Landroidx/compose/runtime/Applier;->remove(II)V

    return-void
.end method
