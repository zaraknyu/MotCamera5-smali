.class public final Landroidx/compose/runtime/changelist/Operation$InsertSlots;
.super Landroidx/compose/runtime/changelist/Operation;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/changelist/Operation$InsertSlots;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/runtime/changelist/Operation$InsertSlots;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/compose/runtime/changelist/Operation;-><init>(III)V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$InsertSlots;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$InsertSlots;

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/collection/CircularArray;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/internal/RememberEventDispatcher;)V
    .locals 0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/collection/CircularArray;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/SlotTable;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/collection/CircularArray;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/Anchor;

    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->beginInsert()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result p1

    invoke-virtual {p3, p0, p1}, Landroidx/compose/runtime/SlotWriter;->moveFrom(Landroidx/compose/runtime/SlotTable;I)V

    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->endInsert()V

    return-void
.end method
