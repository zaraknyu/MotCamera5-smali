.class public Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;
.super Landroidx/preference/ListPreference;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0017\u0018\u00002\u00020\u00012\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;",
        "Landroidx/preference/ListPreference;",
        "",
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
.field public final synthetic $$delegate_0:Lcom/google/mlkit/common/internal/zzc;

.field public enableAppearance:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f04019d

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    new-instance p1, Lcom/google/mlkit/common/internal/zzc;

    const/16 p2, 0x12

    .line 4
    invoke-direct {p1, p2}, Lcom/google/mlkit/common/internal/zzc;-><init>(I)V

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->$$delegate_0:Lcom/google/mlkit/common/internal/zzc;

    .line 6
    invoke-virtual {p0}, Landroidx/preference/Preference;->setIconSpaceReserved()V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    const-string v0, "getContext(...)"

    iget-object v1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->$$delegate_0:Lcom/google/mlkit/common/internal/zzc;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/google/mlkit/common/internal/zzc;->setBasePreferenceStyle(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public final onClick()V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroidx/preference/DialogPreference;->onClick()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->onClickWhenDisabled()V

    return-void
.end method

.method public onClickWhenDisabled()V
    .locals 0

    return-void
.end method
