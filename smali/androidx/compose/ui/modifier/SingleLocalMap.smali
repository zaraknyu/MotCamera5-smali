.class public final Landroidx/compose/ui/modifier/SingleLocalMap;
.super Landroidx/compose/ui/modifier/ModifierLocalMap;
.source "SourceFile"


# instance fields
.field public final key:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

.field public final value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/modifier/ProvidableModifierLocal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/modifier/SingleLocalMap;->key:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/modifier/SingleLocalMap;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    return-void
.end method


# virtual methods
.method public final contains$ui_release(Landroidx/compose/ui/modifier/ProvidableModifierLocal;)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/modifier/SingleLocalMap;->key:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final get$ui_release(Landroidx/compose/ui/modifier/ProvidableModifierLocal;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/modifier/SingleLocalMap;->key:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Check failed."

    invoke-static {p1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Landroidx/compose/ui/modifier/SingleLocalMap;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method
