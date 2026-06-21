.class public final Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# instance fields
.field public final mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final mList:Landroidx/recyclerview/widget/RecyclerView;

.field public final mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroupAdapter;Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput-object p2, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mList:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mPreference:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    return-void
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    return-void
.end method

.method public final onItemRangeInserted(II)V
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    return-void
.end method

.method public final onItemRangeMoved(II)V
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    return-void
.end method

.method public final onItemRangeRemoved(II)V
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    return-void
.end method

.method public final scrollToPreference()V
    .locals 2

    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroupAdapter;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method
