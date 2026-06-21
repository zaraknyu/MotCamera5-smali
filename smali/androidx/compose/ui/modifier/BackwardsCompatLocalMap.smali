.class public final Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;
.super Landroidx/compose/ui/modifier/ModifierLocalMap;
.source "SourceFile"


# instance fields
.field public element:Landroidx/compose/foundation/layout/InsetsPaddingModifier;


# virtual methods
.method public final contains$ui_release(Landroidx/compose/ui/modifier/ProvidableModifierLocal;)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;->element:Landroidx/compose/foundation/layout/InsetsPaddingModifier;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->ModifierLocalConsumedWindowInsets:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final get$ui_release(Landroidx/compose/ui/modifier/ProvidableModifierLocal;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;->element:Landroidx/compose/foundation/layout/InsetsPaddingModifier;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->ModifierLocalConsumedWindowInsets:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Check failed."

    invoke-static {p1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;->element:Landroidx/compose/foundation/layout/InsetsPaddingModifier;

    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->consumedInsets$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/layout/WindowInsets;

    return-object p0
.end method
