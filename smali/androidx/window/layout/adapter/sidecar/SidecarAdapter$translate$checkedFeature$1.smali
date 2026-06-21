.class public final Landroidx/window/layout/adapter/sidecar/SidecarAdapter$translate$checkedFeature$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/window/layout/adapter/sidecar/SidecarAdapter$translate$checkedFeature$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/layout/adapter/sidecar/SidecarAdapter$translate$checkedFeature$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    sput-object v0, Landroidx/window/layout/adapter/sidecar/SidecarAdapter$translate$checkedFeature$1;->INSTANCE:Landroidx/window/layout/adapter/sidecar/SidecarAdapter$translate$checkedFeature$1;

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/window/sidecar/SidecarDisplayFeature;)Ljava/lang/Boolean;
    .locals 1

    const-string p0, "$this$require"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/window/sidecar/SidecarDisplayFeature;

    invoke-virtual {p0, p1}, Landroidx/window/layout/adapter/sidecar/SidecarAdapter$translate$checkedFeature$1;->invoke(Landroidx/window/sidecar/SidecarDisplayFeature;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
