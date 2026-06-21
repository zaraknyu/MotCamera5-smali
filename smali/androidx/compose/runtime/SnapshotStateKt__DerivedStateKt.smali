.class public abstract synthetic Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final calculationBlockNestedLevel:Landroidx/core/view/MenuHostHelper;

.field public static final derivedStateObservers:Landroidx/core/view/MenuHostHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/core/view/MenuHostHelper;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/core/view/MenuHostHelper;-><init>(I)V

    sput-object v0, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->calculationBlockNestedLevel:Landroidx/core/view/MenuHostHelper;

    new-instance v0, Landroidx/core/view/MenuHostHelper;

    invoke-direct {v0, v1}, Landroidx/core/view/MenuHostHelper;-><init>(I)V

    sput-object v0, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->derivedStateObservers:Landroidx/core/view/MenuHostHelper;

    return-void
.end method
