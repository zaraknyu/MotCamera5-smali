.class public final Landroidx/compose/runtime/changelist/Operation$SkipToEndOfCurrentGroup;
.super Landroidx/compose/runtime/changelist/Operation;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/changelist/Operation$SkipToEndOfCurrentGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/runtime/changelist/Operation$SkipToEndOfCurrentGroup;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2}, Landroidx/compose/runtime/changelist/Operation;-><init>(III)V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$SkipToEndOfCurrentGroup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$SkipToEndOfCurrentGroup;

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/collection/CircularArray;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/internal/RememberEventDispatcher;)V
    .locals 0

    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    return-void
.end method
