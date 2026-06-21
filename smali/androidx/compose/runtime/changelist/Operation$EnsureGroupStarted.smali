.class public final Landroidx/compose/runtime/changelist/Operation$EnsureGroupStarted;
.super Landroidx/compose/runtime/changelist/Operation;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/changelist/Operation$EnsureGroupStarted;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/runtime/changelist/Operation$EnsureGroupStarted;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroidx/compose/runtime/changelist/Operation;-><init>(III)V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$EnsureGroupStarted;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EnsureGroupStarted;

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/collection/CircularArray;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/internal/RememberEventDispatcher;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/collection/CircularArray;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/Anchor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result p0

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/SlotWriter;->ensureStarted(I)V

    return-void
.end method
