.class public final Landroidx/compose/ui/semantics/SemanticsOwner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final listeners:Landroidx/collection/MutableObjectList;

.field public final nodes:Landroidx/collection/IntObjectMap;

.field public final outerSemanticsNode:Landroidx/compose/ui/semantics/EmptySemanticsModifier;

.field public final rootNode:Landroidx/compose/ui/node/LayoutNode;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/EmptySemanticsModifier;Landroidx/collection/MutableIntObjectMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/semantics/SemanticsOwner;->rootNode:Landroidx/compose/ui/node/LayoutNode;

    iput-object p2, p0, Landroidx/compose/ui/semantics/SemanticsOwner;->outerSemanticsNode:Landroidx/compose/ui/semantics/EmptySemanticsModifier;

    iput-object p3, p0, Landroidx/compose/ui/semantics/SemanticsOwner;->nodes:Landroidx/collection/IntObjectMap;

    new-instance p1, Landroidx/collection/MutableObjectList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Landroidx/collection/MutableObjectList;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/ui/semantics/SemanticsOwner;->listeners:Landroidx/collection/MutableObjectList;

    return-void
.end method


# virtual methods
.method public final getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;
    .locals 4

    new-instance v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-direct {v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;-><init>()V

    new-instance v1, Landroidx/compose/ui/semantics/SemanticsNode;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/compose/ui/semantics/SemanticsOwner;->outerSemanticsNode:Landroidx/compose/ui/semantics/EmptySemanticsModifier;

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsOwner;->rootNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {v1, v3, v2, p0, v0}, Landroidx/compose/ui/semantics/SemanticsNode;-><init>(Landroidx/compose/ui/Modifier$Node;ZLandroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    return-object v1
.end method

.method public final notifySemanticsChange$ui_release(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V
    .locals 12

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsOwner;->listeners:Landroidx/collection/MutableObjectList;

    iget-object v0, p0, Landroidx/collection/MutableObjectList;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/collection/MutableObjectList;->_size:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_b

    aget-object v3, v0, v2

    check-cast v3, Landroidx/compose/ui/autofill/AndroidAutofillManager;

    iget-object v4, v3, Landroidx/compose/ui/autofill/AndroidAutofillManager;->currentlyDisplayedIDs:Landroidx/collection/MutableIntSet;

    iget-object v5, v3, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    iget-object v3, v3, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/room/ObservedTableVersions;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v6

    iget v7, p1, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    const/4 v8, 0x0

    if-eqz p2, :cond_1

    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->InputText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v10, p2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v10, v9}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_0

    move-object v9, v8

    :cond_0
    check-cast v9, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v9, :cond_1

    iget-object v9, v9, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v9, v8

    :goto_1
    if-eqz v6, :cond_3

    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->InputText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v11, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v11, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_2

    move-object v10, v8

    :cond_2
    check-cast v10, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v10, :cond_3

    iget-object v8, v10, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    :cond_3
    const/4 v10, 0x1

    if-eq v9, v8, :cond_6

    if-nez v9, :cond_4

    invoke-virtual {v3, v5, v7, v10}, Landroidx/room/ObservedTableVersions;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    goto :goto_2

    :cond_4
    if-nez v8, :cond_5

    invoke-virtual {v3, v5, v7, v1}, Landroidx/room/ObservedTableVersions;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    goto :goto_2

    :cond_5
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDataType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v6, v9}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/autofill/AndroidContentDataType;

    sget-object v11, Landroidx/compose/ui/autofill/ContentDataType$Companion;->Text:Landroidx/compose/ui/autofill/AndroidContentDataType;

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v8

    iget-object v3, v3, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v3, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v3, v5, v7, v8}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    iget-object v3, p2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v3, v5}, Landroidx/collection/MutableScatterMap;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v10, :cond_7

    move v3, v10

    goto :goto_3

    :cond_7
    move v3, v1

    :goto_3
    if-eqz v6, :cond_8

    iget-object v5, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v5, v6}, Landroidx/collection/MutableScatterMap;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v10, :cond_8

    goto :goto_4

    :cond_8
    move v10, v1

    :goto_4
    if-eq v3, v10, :cond_a

    if-eqz v10, :cond_9

    invoke-virtual {v4, v7}, Landroidx/collection/MutableIntSet;->add(I)Z

    goto :goto_5

    :cond_9
    invoke-virtual {v4, v7}, Landroidx/collection/MutableIntSet;->remove(I)Z

    :cond_a
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method
