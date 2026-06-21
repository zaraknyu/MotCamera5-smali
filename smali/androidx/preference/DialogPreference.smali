.class public abstract Landroidx/preference/DialogPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field public final mDialogIcon:Landroid/graphics/drawable/Drawable;

.field public final mDialogLayoutResId:I

.field public final mDialogMessage:Ljava/lang/String;

.field public final mDialogTitle:Ljava/lang/CharSequence;

.field public final mNegativeButtonText:Ljava/lang/String;

.field public final mPositiveButtonText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f04019d

    const v1, 0x1010091

    .line 24
    invoke-static {p1, v0, v1}, Landroidx/core/content/res/CamUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    sget-object v0, Landroidx/preference/R$styleable;->DialogPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x9

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 5
    :cond_0
    iput-object p2, p0, Landroidx/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    if-nez p2, :cond_1

    .line 6
    iget-object p2, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 7
    iput-object p2, p0, Landroidx/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    :cond_1
    const/16 p2, 0x8

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 10
    :cond_2
    iput-object p2, p0, Landroidx/preference/DialogPreference;->mDialogMessage:Ljava/lang/String;

    const/4 p2, 0x6

    .line 11
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_3

    const/4 p2, 0x2

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 13
    :cond_3
    iput-object p2, p0, Landroidx/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    const/16 p2, 0xb

    .line 14
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    const/4 p2, 0x3

    .line 15
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 16
    :cond_4
    iput-object p2, p0, Landroidx/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/String;

    const/16 p2, 0xa

    .line 17
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    const/4 p2, 0x4

    .line 18
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 19
    :cond_5
    iput-object p2, p0, Landroidx/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/String;

    const/4 p2, 0x5

    .line 20
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 p3, 0x7

    .line 21
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 22
    iput p2, p0, Landroidx/preference/DialogPreference;->mDialogLayoutResId:I

    .line 23
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 6

    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-object v0, v0, Landroidx/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    if-eqz v0, :cond_5

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    instance-of v1, p0, Landroidx/preference/EditTextPreference;

    const/4 v3, 0x1

    const-string v4, "key"

    if-eqz v1, :cond_2

    new-instance v1, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;

    invoke-direct {v1}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v3}, Landroid/os/Bundle;-><init>(I)V

    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v4, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    instance-of v1, p0, Landroidx/preference/ListPreference;

    if-eqz v1, :cond_3

    new-instance v1, Landroidx/preference/ListPreferenceDialogFragmentCompat;

    invoke-direct {v1}, Landroidx/preference/ListPreferenceDialogFragmentCompat;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v3}, Landroid/os/Bundle;-><init>(I)V

    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v4, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    instance-of v1, p0, Landroidx/preference/MultiSelectListPreference;

    if-eqz v1, :cond_4

    new-instance v1, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-direct {v1}, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v3}, Landroid/os/Bundle;-><init>(I)V

    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v4, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :goto_1
    const/4 p0, 0x0

    invoke-virtual {v1, v0, p0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-boolean p0, v1, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    iput-boolean v3, v1, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v4, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-boolean v3, v4, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    invoke-virtual {v4, p0, v1, v2, v3}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v4, p0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot display dialog for an unknown Preference type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    return-void
.end method
