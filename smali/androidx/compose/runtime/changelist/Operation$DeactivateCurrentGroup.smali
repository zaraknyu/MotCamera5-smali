.class public final Landroidx/compose/runtime/changelist/Operation$DeactivateCurrentGroup;
.super Landroidx/compose/runtime/changelist/Operation;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/changelist/Operation$DeactivateCurrentGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/runtime/changelist/Operation$DeactivateCurrentGroup;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2}, Landroidx/compose/runtime/changelist/Operation;-><init>(III)V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$DeactivateCurrentGroup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$DeactivateCurrentGroup;

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/collection/CircularArray;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/internal/RememberEventDispatcher;)V
    .locals 0

    invoke-static {p3, p4}, Landroidx/compose/runtime/ComposerKt;->deactivateCurrentGroup(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/internal/RememberEventDispatcher;)V

    return-void
.end method
