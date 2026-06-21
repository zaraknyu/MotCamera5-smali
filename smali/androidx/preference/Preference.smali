.class public Landroidx/preference/Preference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field public final mAllowDividerAbove:Z

.field public final mAllowDividerBelow:Z

.field public mBaseMethodCalled:Z

.field public final mClickListener:Landroidx/preference/Preference$1;

.field public final mContext:Landroid/content/Context;

.field public final mCopyingEnabled:Z

.field public mDefaultValue:Ljava/lang/Object;

.field public final mDependencyKey:Ljava/lang/String;

.field public mDependencyMet:Z

.field public mDependents:Ljava/util/ArrayList;

.field public mEnabled:Z

.field public mExtras:Landroid/os/Bundle;

.field public final mFragment:Ljava/lang/String;

.field public mHasId:Z

.field public final mHasSingleLineTitleAttr:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconResId:I

.field public mIconSpaceReserved:Z

.field public mId:J

.field public mIntent:Landroid/content/Intent;

.field public final mKey:Ljava/lang/String;

.field public mLayoutResId:I

.field public mListener:Landroidx/preference/PreferenceGroupAdapter;

.field public mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field public mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field public mOnCopyListener:Landroidx/preference/Preference$OnPreferenceCopyListener;

.field public mOrder:I

.field public mParentDependencyMet:Z

.field public mParentGroup:Landroidx/preference/PreferenceGroup;

.field public mPersistent:Z

.field public mPreferenceManager:Landroidx/preference/PreferenceManager;

.field public final mSelectable:Z

.field public final mShouldDisableView:Z

.field public final mSingleLineTitle:Z

.field public mSummary:Ljava/lang/CharSequence;

.field public mSummaryProvider:Landroidx/preference/Preference$SummaryProvider;

.field public mTitle:Ljava/lang/CharSequence;

.field public mVisible:Z

.field public mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f04045b

    const v1, 0x101008e

    .line 80
    invoke-static {p1, v0, v1}, Landroidx/core/content/res/CamUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Landroidx/preference/Preference;->mOrder:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 4
    iput-boolean v1, p0, Landroidx/preference/Preference;->mSelectable:Z

    .line 5
    iput-boolean v1, p0, Landroidx/preference/Preference;->mPersistent:Z

    .line 6
    iput-boolean v1, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    .line 7
    iput-boolean v1, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    .line 8
    iput-boolean v1, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 9
    iput-boolean v1, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    .line 10
    iput-boolean v1, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    .line 11
    iput-boolean v1, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    .line 12
    iput-boolean v1, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    const v2, 0x7f0d00d2

    .line 13
    iput v2, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 14
    new-instance v3, Landroidx/preference/Preference$1;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Landroidx/preference/Preference$1;-><init>(ILjava/lang/Object;)V

    iput-object v3, p0, Landroidx/preference/Preference;->mClickListener:Landroidx/preference/Preference$1;

    .line 15
    iput-object p1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 16
    sget-object v3, Landroidx/preference/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x17

    const/4 p3, 0x0

    .line 17
    invoke-virtual {p1, p3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 18
    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 19
    iput p2, p0, Landroidx/preference/Preference;->mIconResId:I

    const/16 p2, 0x1a

    .line 20
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x6

    .line 21
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 22
    :cond_0
    iput-object p2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    const/16 p2, 0x22

    .line 23
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p2, 0x4

    .line 24
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 25
    :cond_1
    iput-object p2, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    const/16 p2, 0x21

    .line 26
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p2, 0x7

    .line 27
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 28
    :cond_2
    iput-object p2, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    const/16 p2, 0x8

    .line 29
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/16 p4, 0x1c

    .line 30
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 31
    iput p2, p0, Landroidx/preference/Preference;->mOrder:I

    const/16 p2, 0x16

    .line 32
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    const/16 p2, 0xd

    .line 33
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 34
    :cond_3
    iput-object p2, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    const/4 p2, 0x3

    .line 35
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/16 p4, 0x1b

    .line 36
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 37
    iput p2, p0, Landroidx/preference/Preference;->mLayoutResId:I

    const/16 p2, 0x9

    .line 38
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/16 p4, 0x23

    .line 39
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 40
    iput p2, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    const/4 p2, 0x2

    .line 41
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/16 p4, 0x15

    .line 42
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 43
    iput-boolean p2, p0, Landroidx/preference/Preference;->mEnabled:Z

    const/4 p2, 0x5

    .line 44
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/16 p4, 0x1e

    .line 45
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 46
    iput-boolean p2, p0, Landroidx/preference/Preference;->mSelectable:Z

    const/16 p4, 0x1d

    .line 47
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 48
    invoke-virtual {p1, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    .line 49
    iput-boolean p4, p0, Landroidx/preference/Preference;->mPersistent:Z

    const/16 p4, 0x13

    .line 50
    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_4

    const/16 p4, 0xa

    .line 51
    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 52
    :cond_4
    iput-object p4, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    const/16 p4, 0x10

    .line 53
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 54
    invoke-virtual {p1, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    .line 55
    iput-boolean p4, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    const/16 p4, 0x11

    .line 56
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 57
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 58
    iput-boolean p2, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    const/16 p2, 0x12

    .line 59
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 60
    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const/16 p2, 0xb

    .line 61
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 62
    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    :cond_6
    :goto_0
    const/16 p2, 0xc

    .line 63
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/16 p4, 0x1f

    .line 64
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 65
    iput-boolean p2, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    const/16 p2, 0x20

    .line 66
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    iput-boolean p4, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz p4, :cond_7

    const/16 p4, 0xe

    .line 67
    invoke-virtual {p1, p4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    .line 68
    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 69
    iput-boolean p2, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    :cond_7
    const/16 p2, 0xf

    .line 70
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/16 p4, 0x18

    .line 71
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 72
    iput-boolean p2, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    const/16 p2, 0x19

    .line 73
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    .line 74
    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 75
    iput-boolean p2, p0, Landroidx/preference/Preference;->mVisible:Z

    const/16 p2, 0x14

    .line 76
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 77
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 78
    iput-boolean p2, p0, Landroidx/preference/Preference;->mCopyingEnabled:Z

    .line 79
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final callChangeListener(Ljava/io/Serializable;)Z
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Landroidx/preference/Preference;

    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    iget v1, p1, Landroidx/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget-object p0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    if-nez v0, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean p0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Landroidx/preference/Preference;->mId:J

    return-wide v0
.end method

.method public final getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->mSummaryProvider:Landroidx/preference/Preference$SummaryProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroidx/preference/Preference$SummaryProvider;->provideSummary(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyChanged()V
    .locals 3

    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/PreferenceGroupAdapter;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4

    iget-object p0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    iget-boolean v3, v2, Landroidx/preference/Preference;->mDependencyMet:Z

    if-ne v3, p1, :cond_1

    xor-int/lit8 v3, p1, 0x1

    iput-boolean v3, v2, Landroidx/preference/Preference;->mDependencyMet:Z

    invoke-virtual {v2}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    invoke-virtual {v2}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onAttached()V
    .locals 4

    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    check-cast v1, Landroidx/preference/PreferenceScreen;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_5

    iget-object v0, v2, Landroidx/preference/Preference;->mDependents:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Landroidx/preference/Preference;->mDependents:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, v2, Landroidx/preference/Preference;->mDependents:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    iget-boolean v1, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    if-ne v1, v0, :cond_4

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Dependency \""

    const-string v3, "\" not found for preference \""

    invoke-static {v2, v0, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" (title: \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 4

    iput-object p1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-boolean v0, p0, Landroidx/preference/Preference;->mHasId:Z

    if-nez v0, :cond_0

    monitor-enter p1

    :try_start_0
    iget-wide v0, p1, Landroidx/preference/PreferenceManager;->mNextId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p1, Landroidx/preference/PreferenceManager;->mNextId:J

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-wide v0, p0, Landroidx/preference/Preference;->mId:J

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->onSetInitialValue(Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_2
    iget-object p1, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onSetInitialValue(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 9

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroidx/preference/Preference;->mClickListener:Landroidx/preference/Preference$1;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    move-object v2, v4

    :goto_0
    const v5, 0x1020016

    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-boolean v6, p0, Landroidx/preference/Preference;->mSelectable:Z

    if-eqz v5, :cond_4

    iget-object v7, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v7, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_2
    if-nez v6, :cond_4

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    const v2, 0x1020006

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v5, 0x4

    if-eqz v2, :cond_a

    iget v7, p0, Landroidx/preference/Preference;->mIconResId:I

    if-nez v7, :cond_5

    iget-object v8, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_7

    :cond_5
    iget-object v8, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_6

    iget-object v8, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_6
    iget-object v7, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    iget-object v7, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_8

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    iget-boolean v7, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v7, :cond_9

    move v7, v5

    goto :goto_2

    :cond_9
    move v7, v3

    :goto_2
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    :goto_3
    const v2, 0x7f0a0240

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_b

    const v2, 0x102003e

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    :cond_b
    if-eqz v2, :cond_e

    iget-object v7, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_c

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_c
    iget-boolean v1, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v1, :cond_d

    move v3, v5

    :cond_d
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    :goto_4
    iget-boolean v1, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Landroidx/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    goto :goto_5

    :cond_f
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    :goto_5
    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    iget-boolean v1, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    iput-boolean v1, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    iget-boolean v1, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    iput-boolean v1, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    iget-boolean p1, p0, Landroidx/preference/Preference;->mCopyingEnabled:Z

    if-eqz p1, :cond_10

    iget-object v1, p0, Landroidx/preference/Preference;->mOnCopyListener:Landroidx/preference/Preference$OnPreferenceCopyListener;

    if-nez v1, :cond_10

    new-instance v1, Landroidx/preference/Preference$OnPreferenceCopyListener;

    invoke-direct {v1, p0}, Landroidx/preference/Preference$OnPreferenceCopyListener;-><init>(Landroidx/preference/Preference;)V

    iput-object v1, p0, Landroidx/preference/Preference;->mOnCopyListener:Landroidx/preference/Preference$OnPreferenceCopyListener;

    :cond_10
    if-eqz p1, :cond_11

    iget-object p0, p0, Landroidx/preference/Preference;->mOnCopyListener:Landroidx/preference/Preference$OnPreferenceCopyListener;

    goto :goto_6

    :cond_11
    move-object p0, v4

    :goto_6
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    if-eqz p1, :cond_12

    if-nez v6, :cond_12

    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_12
    return-void
.end method

.method public onClick()V
    .locals 0

    return-void
.end method

.method public onDetached()V
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    return-void
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    sget-object p0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong state class -- expecting Preference State"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    sget-object p0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object p0
.end method

.method public onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final performClick()V
    .locals 7

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3
    iget-boolean v0, p0, Landroidx/preference/Preference;->mSelectable:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->onClick()V

    .line 5
    iget-object v0, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroidx/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroidx/preference/Preference;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz v0, :cond_9

    .line 7
    iget-object v0, v0, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    if-eqz v0, :cond_9

    .line 8
    iget-object v1, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    move-object v4, v0

    move v3, v2

    :goto_0
    if-nez v3, :cond_3

    if-eqz v4, :cond_3

    .line 9
    instance-of v5, v4, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    if-eqz v5, :cond_2

    .line 10
    move-object v3, v4

    check-cast v3, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    .line 11
    check-cast v3, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    invoke-virtual {v3, v0, p0}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result v3

    .line 12
    :cond_2
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    if-eqz v4, :cond_4

    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    .line 15
    check-cast v3, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    invoke-virtual {v3, v0, p0}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result v3

    :cond_4
    if-nez v3, :cond_5

    .line 16
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    instance-of v4, v4, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    if-eqz v4, :cond_5

    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    .line 18
    check-cast v3, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    invoke-virtual {v3, v0, p0}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result v3

    :cond_5
    if-nez v3, :cond_7

    .line 19
    const-string v3, "PreferenceFragment"

    const-string v4, "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    .line 21
    iget-object v4, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    if-nez v4, :cond_6

    .line 22
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 23
    :cond_6
    iget-object v4, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 24
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentManager$3;

    move-result-object v5

    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 26
    invoke-virtual {v5, v1}, Landroidx/fragment/app/FragmentManager$3;->instantiate(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 27
    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 29
    new-instance v4, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v4, v3}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 30
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v3, 0x0

    .line 31
    invoke-virtual {v4, v0, v1, v3}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v4}, Landroidx/fragment/app/BackStackRecord;->addToBackStack()V

    .line 33
    invoke-virtual {v4, v2}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    :cond_7
    const/4 v2, 0x1

    :cond_8
    if-eqz v2, :cond_9

    goto :goto_1

    .line 34
    :cond_9
    iget-object v0, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_a

    .line 35
    iget-object p0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public performClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->performClick()V

    return-void
.end method

.method public final persistString(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-boolean p0, p0, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    if-nez p0, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/preference/Preference;->mEnabled:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final setIconSpaceReserved()V
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->mSummaryProvider:Landroidx/preference/Preference$SummaryProvider;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Preference already has a SummaryProvider set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/Preference;->mVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/preference/Preference;->mVisible:Z

    iget-object p0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/PreferenceGroupAdapter;

    if-eqz p0, :cond_0

    iget-object p1, p0, Landroidx/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter;->mSyncRunnable:Landroidx/lifecycle/LiveData$1;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final shouldPersist()Z
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->mPersistent:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unregisterDependency()V
    .locals 3

    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    check-cast v1, Landroidx/preference/PreferenceScreen;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    iget-object v0, v2, Landroidx/preference/Preference;->mDependents:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
