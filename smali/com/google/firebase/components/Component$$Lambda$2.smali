.class public final synthetic Lcom/google/firebase/components/Component$$Lambda$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# instance fields
.field public final arg$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/components/Component$$Lambda$2;->arg$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(III)Lcom/google/firebase/components/Component$$Lambda$2;
    .locals 2

    new-instance v0, Lcom/google/firebase/components/Component$$Lambda$2;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/firebase/components/Component$$Lambda$2;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public create(Lcom/google/firebase/components/RestrictedComponentContainer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/components/Component$$Lambda$2;->arg$1:Ljava/lang/Object;

    return-object p0
.end method
