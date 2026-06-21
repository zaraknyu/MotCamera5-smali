.class public final Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment$CustomRecycler;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment$CustomRecycler",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "MotCamera5-v10.0.47.24_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public isScrollEnabled:Z


# virtual methods
.method public final canScrollHorizontally()Z
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment$CustomRecycler;->isScrollEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final canScrollVertically()Z
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment$CustomRecycler;->isScrollEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
