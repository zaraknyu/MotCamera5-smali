.class public final Landroidx/compose/ui/window/DialogProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final decorFitsSystemWindows:Z

.field public final dismissOnBackPress:Z

.field public final dismissOnClickOutside:Z

.field public final securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

.field public final usePlatformDefaultWidth:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Landroidx/compose/ui/window/SecureFlagPolicy;->Inherit:Landroidx/compose/ui/window/SecureFlagPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/compose/ui/window/DialogProperties;->dismissOnBackPress:Z

    iput-boolean v1, p0, Landroidx/compose/ui/window/DialogProperties;->dismissOnClickOutside:Z

    iput-object v0, p0, Landroidx/compose/ui/window/DialogProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    iput-boolean v1, p0, Landroidx/compose/ui/window/DialogProperties;->usePlatformDefaultWidth:Z

    iput-boolean v1, p0, Landroidx/compose/ui/window/DialogProperties;->decorFitsSystemWindows:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Landroidx/compose/ui/window/DialogProperties;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/ui/window/DialogProperties;

    iget-boolean v0, p1, Landroidx/compose/ui/window/DialogProperties;->dismissOnBackPress:Z

    iget-boolean v1, p0, Landroidx/compose/ui/window/DialogProperties;->dismissOnBackPress:Z

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroidx/compose/ui/window/DialogProperties;->dismissOnClickOutside:Z

    iget-boolean v1, p1, Landroidx/compose/ui/window/DialogProperties;->dismissOnClickOutside:Z

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/compose/ui/window/DialogProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    iget-object v1, p1, Landroidx/compose/ui/window/DialogProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Landroidx/compose/ui/window/DialogProperties;->usePlatformDefaultWidth:Z

    iget-boolean v1, p1, Landroidx/compose/ui/window/DialogProperties;->usePlatformDefaultWidth:Z

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-boolean p0, p0, Landroidx/compose/ui/window/DialogProperties;->decorFitsSystemWindows:Z

    iget-boolean p1, p1, Landroidx/compose/ui/window/DialogProperties;->decorFitsSystemWindows:Z

    if-eq p0, p1, :cond_6

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/ui/window/DialogProperties;->dismissOnBackPress:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/compose/ui/window/DialogProperties;->dismissOnClickOutside:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Landroidx/compose/ui/window/DialogProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Landroidx/compose/ui/window/DialogProperties;->usePlatformDefaultWidth:Z

    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Landroidx/compose/ui/window/DialogProperties;->decorFitsSystemWindows:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
