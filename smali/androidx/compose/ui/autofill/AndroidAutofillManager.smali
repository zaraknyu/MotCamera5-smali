.class public final Landroidx/compose/ui/autofill/AndroidAutofillManager;
.super Landroidx/compose/ui/autofill/AutofillManager;
.source "SourceFile"


# instance fields
.field public final currentlyDisplayedIDs:Landroidx/collection/MutableIntSet;

.field public final packageName:Ljava/lang/String;

.field public pendingAutofillCommit:Z

.field public final platformAutofillManager:Landroidx/room/ObservedTableVersions;

.field public final rectManager:Landroidx/compose/ui/spatial/RectManager;

.field public final rootAutofillId:Landroid/view/autofill/AutofillId;

.field public final semanticsOwner:Landroidx/compose/ui/semantics/SemanticsOwner;

.field public final view:Landroidx/compose/ui/platform/AndroidComposeView;


# direct methods
.method public constructor <init>(Landroidx/room/ObservedTableVersions;Landroidx/compose/ui/semantics/SemanticsOwner;Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/spatial/RectManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->platformAutofillManager:Landroidx/room/ObservedTableVersions;

    iput-object p2, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->semanticsOwner:Landroidx/compose/ui/semantics/SemanticsOwner;

    iput-object p3, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    iput-object p4, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->rectManager:Landroidx/compose/ui/spatial/RectManager;

    iput-object p5, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->packageName:Ljava/lang/String;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Landroid/view/View;->setImportantForAutofill(I)V

    invoke-virtual {p3}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->rootAutofillId:Landroid/view/autofill/AutofillId;

    new-instance p1, Landroidx/collection/MutableIntSet;

    invoke-direct {p1}, Landroidx/collection/MutableIntSet;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->currentlyDisplayedIDs:Landroidx/collection/MutableIntSet;

    return-void

    :cond_0
    const-string p0, "Required value was null."

    invoke-static {p0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Lcom/google/gson/JsonParseException;

    move-result-object p0

    throw p0
.end method
