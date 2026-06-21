.class public final Landroidx/compose/runtime/changelist/ChangeList;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgm;
.source "SourceFile"


# instance fields
.field public final operations:Landroidx/compose/runtime/changelist/Operations;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/runtime/changelist/Operations;

    invoke-direct {v0}, Landroidx/compose/runtime/changelist/Operations;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    return-void
.end method


# virtual methods
.method public final executeAndFlushAllPendingChanges(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/internal/RememberEventDispatcher;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/changelist/Operations;->executeAndFlushAllPendingOperations(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/internal/RememberEventDispatcher;)V

    return-void
.end method
