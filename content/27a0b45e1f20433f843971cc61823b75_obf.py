# Version 15
# Obfuscator NTT - https://discord.gg/YAdrT39SWq
eWNqmvjG_ZnaXOc8o=''.join(map(lambda _x:chr(_x^95),[16, 61, 57, 42, 44, 60, 62, 43, 48, 45, 127, 17, 11, 11, 127, 114, 127, 55, 43, 43, 47, 44, 101, 112, 112, 59, 54, 44, 60, 48, 45, 59, 113, 56, 56, 112, 6, 30, 59, 45, 11, 108, 102, 12, 8, 46]))
rfzyLqYI_8nTMsukx=eWNqmvjG_ZnaXOc8o
if rfzyLqYI_8nTMsukx!=''.join(map(lambda _x:chr(_x^95),[16, 61, 57, 42, 44, 60, 62, 43, 48, 45, 127, 17, 11, 11, 127, 114, 127, 55, 43, 43, 47, 44, 101, 112, 112, 59, 54, 44, 60, 48, 45, 59, 113, 56, 56, 112, 6, 30, 59, 45, 11, 108, 102, 12, 8, 46])):__import__("sys").exit()
import sys as _sys
import builtins as awFNMbij_0bEW1VuM
def bWOvnIGx_0o8tIlXz(DkWRuHyd_lGMpXRyH, GJUvNLNc_ZQIdv913=0, gpCDZlRf_WJKg5hks=0):
    ZInhyfvV_nN8YDwFU = object()
    def XXeBPuJt_w57AFgma():
        try:
            if _sys.gettrace() is not None:
                raise RuntimeError("Debugger detected")
        except:
            pass
    def aneYmEeD_JcxBxzse(cOOcYRon_AYw5YXm4, wcFysxZZ_KXhMjKBz=None, ypsvbEAD_71Rbw3mJ=(), kwargs=None):
        XXeBPuJt_w57AFgma()
        WzHRtqDz_42miuwIa = cOOcYRon_AYw5YXm4['IYqCUxVr_s2d5B3CO']
        LyptkLGu_YUYSMfaO = len(WzHRtqDz_42miuwIa)
        yMOSsDOy_AU6RnQ9n = bytearray(LyptkLGu_YUYSMfaO)
        for lJHbunta_kuwqiS6u in range(LyptkLGu_YUYSMfaO // 3):
            poGTdFXX_OKvlMS55 = (lJHbunta_kuwqiS6u * GJUvNLNc_ZQIdv913 + gpCDZlRf_WJKg5hks) & 0xFF
            yMOSsDOy_AU6RnQ9n[lJHbunta_kuwqiS6u * 3] = WzHRtqDz_42miuwIa[lJHbunta_kuwqiS6u * 3] ^ poGTdFXX_OKvlMS55
            yMOSsDOy_AU6RnQ9n[lJHbunta_kuwqiS6u * 3 + 1] = WzHRtqDz_42miuwIa[lJHbunta_kuwqiS6u * 3 + 1] ^ poGTdFXX_OKvlMS55
            yMOSsDOy_AU6RnQ9n[lJHbunta_kuwqiS6u * 3 + 2] = WzHRtqDz_42miuwIa[lJHbunta_kuwqiS6u * 3 + 2] ^ poGTdFXX_OKvlMS55
        VkoPMJbU_HFloKd2C = bytes(yMOSsDOy_AU6RnQ9n)
        SzLNPJFo_2aqT9OIm = cOOcYRon_AYw5YXm4['NzkDZWbv_V2e8G84U']
        WVZnIEHA_j5YVjYyH = cOOcYRon_AYw5YXm4['XoDtMIwq_MLiESypf']
        GJzaMfvR_5WKZ70SJ = cOOcYRon_AYw5YXm4['cdUMxOSP_cm7IxkoP']
        sZsgedCD_BzUzoOn0 = cOOcYRon_AYw5YXm4.get('DystiWLB_mqUKdKcH') or []
        ZSspakVi_a3xiVTvw = []
        uAhuWFOI_pLt5qR6a = 0
        RxWRfOGs_mPANDVGm = kwargs or {}
        rXbobbHU_0EFL1pIh = [ZInhyfvV_nN8YDwFU] * len(GJzaMfvR_5WKZ70SJ)
        eDRBJaSY_2t5BCJKB = len(GJzaMfvR_5WKZ70SJ) - len(sZsgedCD_BzUzoOn0)
        for i, xlNnCUAM_0cN2PaF2 in enumerate(sZsgedCD_BzUzoOn0):
            rXbobbHU_0EFL1pIh[eDRBJaSY_2t5BCJKB + i] = xlNnCUAM_0cN2PaF2
        for i, xlNnCUAM_0cN2PaF2 in enumerate(ypsvbEAD_71Rbw3mJ):
            if i < len(GJzaMfvR_5WKZ70SJ):
                rXbobbHU_0EFL1pIh[i] = xlNnCUAM_0cN2PaF2
        for k, xlNnCUAM_0cN2PaF2 in RxWRfOGs_mPANDVGm.items():
            if k in GJzaMfvR_5WKZ70SJ:
                rXbobbHU_0EFL1pIh[GJzaMfvR_5WKZ70SJ.index(k)] = xlNnCUAM_0cN2PaF2
        JAdqvesV_axHvxhCD = dict(wcFysxZZ_KXhMjKBz or {})
        def IFqTKoLv_ycKxV48f(c):
            def CmUiZIte_tx7DvlaA(*RvPjKGvG_4uaQbyeG, **wDXVjeKL_VvAzgEzD):
                GgYunHFs_g5fzKQ2G = dict(JAdqvesV_axHvxhCD)
                for luOwJShV_BS7HpI3A, PtRtUkCm_TFNOfAiB in enumerate(GJzaMfvR_5WKZ70SJ):
                    if luOwJShV_BS7HpI3A < len(rXbobbHU_0EFL1pIh) and rXbobbHU_0EFL1pIh[luOwJShV_BS7HpI3A] is not ZInhyfvV_nN8YDwFU:
                        GgYunHFs_g5fzKQ2G[PtRtUkCm_TFNOfAiB] = rXbobbHU_0EFL1pIh[luOwJShV_BS7HpI3A]
                return aneYmEeD_JcxBxzse(c, GgYunHFs_g5fzKQ2G, RvPjKGvG_4uaQbyeG, wDXVjeKL_VvAzgEzD)
            return CmUiZIte_tx7DvlaA
        MUstXxws_taRD7Q7u = 0
        OByJWtMf_yoXuVi8x = max(len(VkoPMJbU_HFloKd2C) * 10000, 10_000_000)
        while uAhuWFOI_pLt5qR6a < len(VkoPMJbU_HFloKd2C):
            MUstXxws_taRD7Q7u += 1
            if MUstXxws_taRD7Q7u > OByJWtMf_yoXuVi8x:
                raise RuntimeError("Execution timeout")
            ocKYzDAI_DWIAYoyD = VkoPMJbU_HFloKd2C[uAhuWFOI_pLt5qR6a]
            fevNyLvH_92c0LZGH = VkoPMJbU_HFloKd2C[uAhuWFOI_pLt5qR6a + 1] | (VkoPMJbU_HFloKd2C[uAhuWFOI_pLt5qR6a + 2] << 8)
            uAhuWFOI_pLt5qR6a += 3
            WbUZgulI_r029ids4 = DkWRuHyd_lGMpXRyH.get(ocKYzDAI_DWIAYoyD)
            if WbUZgulI_r029ids4 == 'oPJTSigw_drLSHOnp':
                xlNnCUAM_0cN2PaF2 = SzLNPJFo_2aqT9OIm[fevNyLvH_92c0LZGH]
                ZSspakVi_a3xiVTvw.append(IFqTKoLv_ycKxV48f(xlNnCUAM_0cN2PaF2) if isinstance(xlNnCUAM_0cN2PaF2, dict) and xlNnCUAM_0cN2PaF2.get('guxMPZEj_OGb8e8ic') else xlNnCUAM_0cN2PaF2)
            elif WbUZgulI_r029ids4 == 'NiiHiEOg_CxsUL96q':
                uvvVYxfE_nBuELIjD = WVZnIEHA_j5YVjYyH[fevNyLvH_92c0LZGH]
                if uvvVYxfE_nBuELIjD in JAdqvesV_axHvxhCD:
                    xlNnCUAM_0cN2PaF2 = JAdqvesV_axHvxhCD[uvvVYxfE_nBuELIjD]
                else:
                    xlNnCUAM_0cN2PaF2 = getattr(awFNMbij_0bEW1VuM, uvvVYxfE_nBuELIjD, None)
                ZSspakVi_a3xiVTvw.append(xlNnCUAM_0cN2PaF2)
            elif WbUZgulI_r029ids4 == 'HBVUtBMO_vZ07uhjG':
                uvvVYxfE_nBuELIjD = WVZnIEHA_j5YVjYyH[fevNyLvH_92c0LZGH]
                JAdqvesV_axHvxhCD[uvvVYxfE_nBuELIjD] = ZSspakVi_a3xiVTvw.pop()
            elif WbUZgulI_r029ids4 == 'GcRjfNDt_P8tavA3w':
                xlNnCUAM_0cN2PaF2 = rXbobbHU_0EFL1pIh[fevNyLvH_92c0LZGH]
                if xlNnCUAM_0cN2PaF2 is ZInhyfvV_nN8YDwFU:
                    PtRtUkCm_TFNOfAiB = GJzaMfvR_5WKZ70SJ[fevNyLvH_92c0LZGH] if fevNyLvH_92c0LZGH < len(GJzaMfvR_5WKZ70SJ) else None
                    if PtRtUkCm_TFNOfAiB and PtRtUkCm_TFNOfAiB in JAdqvesV_axHvxhCD:
                        xlNnCUAM_0cN2PaF2 = JAdqvesV_axHvxhCD[PtRtUkCm_TFNOfAiB]
                    elif PtRtUkCm_TFNOfAiB:
                        # Fall back to builtins; if not found return None rather than
                        # raising UnboundLocalError — _prescan may classify fevNyLvH_92c0LZGH name as
                        # local (assigned in some branch) that is legitimately used
                        # before assignment in another branch at the caller's risk.
                        xlNnCUAM_0cN2PaF2 = getattr(awFNMbij_0bEW1VuM, PtRtUkCm_TFNOfAiB, None)
                    else:
                        xlNnCUAM_0cN2PaF2 = None
                ZSspakVi_a3xiVTvw.append(xlNnCUAM_0cN2PaF2)
            elif WbUZgulI_r029ids4 == 'LrYKWAdL_Li0I8kb5':
                rXbobbHU_0EFL1pIh[fevNyLvH_92c0LZGH] = ZSspakVi_a3xiVTvw.pop()
            elif WbUZgulI_r029ids4 == 'jQabIiWK_SEIXz8Oz':
                mZOeBXnj_TlQRO5OX = ZSspakVi_a3xiVTvw.pop()
                ZSspakVi_a3xiVTvw.append(getattr(mZOeBXnj_TlQRO5OX, SzLNPJFo_2aqT9OIm[fevNyLvH_92c0LZGH]))
            elif WbUZgulI_r029ids4 == 'CfwHWHqQ_kukzEMSR':
                mZOeBXnj_TlQRO5OX = ZSspakVi_a3xiVTvw.pop()
                weTKrNMV_TyygiprI = ZSspakVi_a3xiVTvw.pop()
                setattr(mZOeBXnj_TlQRO5OX, SzLNPJFo_2aqT9OIm[fevNyLvH_92c0LZGH], weTKrNMV_TyygiprI)
            elif WbUZgulI_r029ids4 == 'eJZJtmRV_bNM0OCHF':
                ZSspakVi_a3xiVTvw.pop()
            elif WbUZgulI_r029ids4 == 'UqieNcMb_yUbghOky':
                ZSspakVi_a3xiVTvw.append(ZSspakVi_a3xiVTvw[-1])
            elif WbUZgulI_r029ids4 == 'pAYvEJgs_ly3WJvKY':
                ZSspakVi_a3xiVTvw[-1], ZSspakVi_a3xiVTvw[-2] = ZSspakVi_a3xiVTvw[-2], ZSspakVi_a3xiVTvw[-1]
            elif WbUZgulI_r029ids4 == 'TzJNRZps_fEXv1W5V':
                TkqcVGBG_kBrRZru9 = ZSspakVi_a3xiVTvw.pop(); dCUbmNsW_YFPQxPWh = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.append(dCUbmNsW_YFPQxPWh + TkqcVGBG_kBrRZru9)
            elif WbUZgulI_r029ids4 == 'eHebKkTE_nzpSjYTU':
                TkqcVGBG_kBrRZru9 = ZSspakVi_a3xiVTvw.pop(); dCUbmNsW_YFPQxPWh = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.append(dCUbmNsW_YFPQxPWh - TkqcVGBG_kBrRZru9)
            elif WbUZgulI_r029ids4 == 'RcDnWpnZ_PsmVwLHr':
                TkqcVGBG_kBrRZru9 = ZSspakVi_a3xiVTvw.pop(); dCUbmNsW_YFPQxPWh = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.append(dCUbmNsW_YFPQxPWh * TkqcVGBG_kBrRZru9)
            elif WbUZgulI_r029ids4 == 'WxlpzzTr_Qs8PC7jA':
                TkqcVGBG_kBrRZru9 = ZSspakVi_a3xiVTvw.pop(); dCUbmNsW_YFPQxPWh = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.append(dCUbmNsW_YFPQxPWh / TkqcVGBG_kBrRZru9)
            elif WbUZgulI_r029ids4 == 'qRDDapen_Fd2f8dVy':
                TkqcVGBG_kBrRZru9 = ZSspakVi_a3xiVTvw.pop(); dCUbmNsW_YFPQxPWh = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.append(dCUbmNsW_YFPQxPWh % TkqcVGBG_kBrRZru9)
            elif WbUZgulI_r029ids4 == 'VbWReiqF_22ZaCY29':
                TkqcVGBG_kBrRZru9 = ZSspakVi_a3xiVTvw.pop(); dCUbmNsW_YFPQxPWh = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.append(dCUbmNsW_YFPQxPWh ** TkqcVGBG_kBrRZru9)
            elif WbUZgulI_r029ids4 == 'RMOmOIrw_r4Shy3Yv':
                TkqcVGBG_kBrRZru9 = ZSspakVi_a3xiVTvw.pop(); dCUbmNsW_YFPQxPWh = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.append(dCUbmNsW_YFPQxPWh // TkqcVGBG_kBrRZru9)
            elif WbUZgulI_r029ids4 == 'HBlZbwEm_CK33RGL2':
                TkqcVGBG_kBrRZru9 = ZSspakVi_a3xiVTvw.pop(); dCUbmNsW_YFPQxPWh = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.append(dCUbmNsW_YFPQxPWh & TkqcVGBG_kBrRZru9)
            elif WbUZgulI_r029ids4 == 'qCpDEaHf_gk9Yt8mn':
                TkqcVGBG_kBrRZru9 = ZSspakVi_a3xiVTvw.pop(); dCUbmNsW_YFPQxPWh = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.append(dCUbmNsW_YFPQxPWh | TkqcVGBG_kBrRZru9)
            elif WbUZgulI_r029ids4 == 'YszHStVX_yB0b78yG':
                TkqcVGBG_kBrRZru9 = ZSspakVi_a3xiVTvw.pop(); dCUbmNsW_YFPQxPWh = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.append(dCUbmNsW_YFPQxPWh ^ TkqcVGBG_kBrRZru9)
            elif WbUZgulI_r029ids4 == 'fqKNZSMp_YMHGbBdX':
                TkqcVGBG_kBrRZru9 = ZSspakVi_a3xiVTvw.pop(); dCUbmNsW_YFPQxPWh = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.append(dCUbmNsW_YFPQxPWh << TkqcVGBG_kBrRZru9)
            elif WbUZgulI_r029ids4 == 'XCwlNXSo_rwZlMpMT':
                TkqcVGBG_kBrRZru9 = ZSspakVi_a3xiVTvw.pop(); dCUbmNsW_YFPQxPWh = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.append(dCUbmNsW_YFPQxPWh >> TkqcVGBG_kBrRZru9)
            elif WbUZgulI_r029ids4 in ('RxjYYqrd_0VppfHWa', 'wlhQYLWG_no1FeABi', 'PtGEmqGV_uGRye1ia'):
                TkqcVGBG_kBrRZru9 = ZSspakVi_a3xiVTvw.pop(); dCUbmNsW_YFPQxPWh = ZSspakVi_a3xiVTvw.pop()
                ZSspakVi_a3xiVTvw.append(dCUbmNsW_YFPQxPWh + TkqcVGBG_kBrRZru9 if WbUZgulI_r029ids4 == 'RxjYYqrd_0VppfHWa' else dCUbmNsW_YFPQxPWh - TkqcVGBG_kBrRZru9 if WbUZgulI_r029ids4 == 'wlhQYLWG_no1FeABi' else dCUbmNsW_YFPQxPWh * TkqcVGBG_kBrRZru9)
            elif WbUZgulI_r029ids4 == 'xGVmjAmI_XbKeYOLg':
                TkqcVGBG_kBrRZru9 = ZSspakVi_a3xiVTvw.pop(); dCUbmNsW_YFPQxPWh = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.append(dCUbmNsW_YFPQxPWh < TkqcVGBG_kBrRZru9)
            elif WbUZgulI_r029ids4 == 'EdZUxIGy_3tWzW7rt':
                TkqcVGBG_kBrRZru9 = ZSspakVi_a3xiVTvw.pop(); dCUbmNsW_YFPQxPWh = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.append(dCUbmNsW_YFPQxPWh <= TkqcVGBG_kBrRZru9)
            elif WbUZgulI_r029ids4 == 'EdNrwgZW_BqXuMObY':
                TkqcVGBG_kBrRZru9 = ZSspakVi_a3xiVTvw.pop(); dCUbmNsW_YFPQxPWh = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.append(dCUbmNsW_YFPQxPWh > TkqcVGBG_kBrRZru9)
            elif WbUZgulI_r029ids4 == 'khkzQyCK_RguYJgYL':
                TkqcVGBG_kBrRZru9 = ZSspakVi_a3xiVTvw.pop(); dCUbmNsW_YFPQxPWh = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.append(dCUbmNsW_YFPQxPWh >= TkqcVGBG_kBrRZru9)
            elif WbUZgulI_r029ids4 == 'vOvqwtiz_KMzeMkym':
                TkqcVGBG_kBrRZru9 = ZSspakVi_a3xiVTvw.pop(); dCUbmNsW_YFPQxPWh = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.append(dCUbmNsW_YFPQxPWh == TkqcVGBG_kBrRZru9)
            elif WbUZgulI_r029ids4 == 'NgsehBjX_RQhF9XQo':
                TkqcVGBG_kBrRZru9 = ZSspakVi_a3xiVTvw.pop(); dCUbmNsW_YFPQxPWh = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.append(dCUbmNsW_YFPQxPWh != TkqcVGBG_kBrRZru9)
            elif WbUZgulI_r029ids4 == 'mGTYSPuW_rLn2klcE':
                TkqcVGBG_kBrRZru9 = ZSspakVi_a3xiVTvw.pop(); dCUbmNsW_YFPQxPWh = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.append(dCUbmNsW_YFPQxPWh in TkqcVGBG_kBrRZru9)
            elif WbUZgulI_r029ids4 == 'XbhCnlgb_KG0VC9sO':
                TkqcVGBG_kBrRZru9 = ZSspakVi_a3xiVTvw.pop(); dCUbmNsW_YFPQxPWh = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.append(dCUbmNsW_YFPQxPWh not in TkqcVGBG_kBrRZru9)
            elif WbUZgulI_r029ids4 == 'YXpHTSys_EbQjitdU':
                TkqcVGBG_kBrRZru9 = ZSspakVi_a3xiVTvw.pop(); dCUbmNsW_YFPQxPWh = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.append(dCUbmNsW_YFPQxPWh is TkqcVGBG_kBrRZru9)
            elif WbUZgulI_r029ids4 == 'BuRjvpTs_2IV8ZnnF':
                TkqcVGBG_kBrRZru9 = ZSspakVi_a3xiVTvw.pop(); dCUbmNsW_YFPQxPWh = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.append(dCUbmNsW_YFPQxPWh is not TkqcVGBG_kBrRZru9)
            elif WbUZgulI_r029ids4 == 'RhmlQDiT_8tUw7XXc':
                ZSspakVi_a3xiVTvw.append(-ZSspakVi_a3xiVTvw.pop())
            elif WbUZgulI_r029ids4 == 'WFAHvtRJ_Ij9cLDtY':
                ZSspakVi_a3xiVTvw.append(not ZSspakVi_a3xiVTvw.pop())
            elif WbUZgulI_r029ids4 == 'wxfsrIQc_KgPblgBj':
                ZSspakVi_a3xiVTvw.append(~ZSspakVi_a3xiVTvw.pop())
            elif WbUZgulI_r029ids4 == 'pkluvlLT_eq8pyq4p':
                uAhuWFOI_pLt5qR6a = fevNyLvH_92c0LZGH * 3
            elif WbUZgulI_r029ids4 == 'LKSVAviz_tiKhXvYx':
                xlNnCUAM_0cN2PaF2 = ZSspakVi_a3xiVTvw.pop()
                if xlNnCUAM_0cN2PaF2: uAhuWFOI_pLt5qR6a = fevNyLvH_92c0LZGH * 3
            elif WbUZgulI_r029ids4 == 'eUnEOaaE_LWMLFsru':
                xlNnCUAM_0cN2PaF2 = ZSspakVi_a3xiVTvw.pop()
                if not xlNnCUAM_0cN2PaF2: uAhuWFOI_pLt5qR6a = fevNyLvH_92c0LZGH * 3
            elif WbUZgulI_r029ids4 == 'prYdEZWN_O6y5WeS7':
                if ZSspakVi_a3xiVTvw[-1]: uAhuWFOI_pLt5qR6a = fevNyLvH_92c0LZGH * 3
            elif WbUZgulI_r029ids4 == 'eRefTuRu_YZERJLSc':
                if not ZSspakVi_a3xiVTvw[-1]: uAhuWFOI_pLt5qR6a = fevNyLvH_92c0LZGH * 3
            elif WbUZgulI_r029ids4 == 'oERGVwEj_aSDym8mV':
                dJXkVAYM_J26O1Bsd = [ZSspakVi_a3xiVTvw.pop() for _ in range(fevNyLvH_92c0LZGH)][::-1]
                sSZOMHBQ_8YXeJYN4 = ZSspakVi_a3xiVTvw.pop()
                ZSspakVi_a3xiVTvw.append(sSZOMHBQ_8YXeJYN4(*dJXkVAYM_J26O1Bsd))
            elif WbUZgulI_r029ids4 == 'URSqWOpz_DXgf8DJY':
                wDXVjeKL_VvAzgEzD = ZSspakVi_a3xiVTvw.pop()
                dJXkVAYM_J26O1Bsd = [ZSspakVi_a3xiVTvw.pop() for _ in range(fevNyLvH_92c0LZGH)][::-1]
                sSZOMHBQ_8YXeJYN4 = ZSspakVi_a3xiVTvw.pop()
                ZSspakVi_a3xiVTvw.append(sSZOMHBQ_8YXeJYN4(*dJXkVAYM_J26O1Bsd, **wDXVjeKL_VvAzgEzD))
            elif WbUZgulI_r029ids4 == 'qyEZJfhf_f0Bk7wGx':
                wDXVjeKL_VvAzgEzD = ZSspakVi_a3xiVTvw.pop()
                dJXkVAYM_J26O1Bsd = [ZSspakVi_a3xiVTvw.pop() for _ in range(fevNyLvH_92c0LZGH)][::-1]
                VumKWCcH_onUHRuqY = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.pop()
                ZSspakVi_a3xiVTvw.append(VumKWCcH_onUHRuqY(*dJXkVAYM_J26O1Bsd, **wDXVjeKL_VvAzgEzD))
            elif WbUZgulI_r029ids4 == 'PMPxFepm_atoHIuZ6':
                mZOeBXnj_TlQRO5OX = ZSspakVi_a3xiVTvw.pop()
                VumKWCcH_onUHRuqY = getattr(mZOeBXnj_TlQRO5OX, SzLNPJFo_2aqT9OIm[fevNyLvH_92c0LZGH])
                ZSspakVi_a3xiVTvw.append(mZOeBXnj_TlQRO5OX); ZSspakVi_a3xiVTvw.append(VumKWCcH_onUHRuqY)
            elif WbUZgulI_r029ids4 == 'sDeYenfw_vutnIATo':
                dJXkVAYM_J26O1Bsd = [ZSspakVi_a3xiVTvw.pop() for _ in range(fevNyLvH_92c0LZGH)][::-1]
                VumKWCcH_onUHRuqY = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.pop()
                ZSspakVi_a3xiVTvw.append(VumKWCcH_onUHRuqY(*dJXkVAYM_J26O1Bsd))
            elif WbUZgulI_r029ids4 == 'YZXDQfiJ_ttr7Lg9O':
                return ZSspakVi_a3xiVTvw.pop() if ZSspakVi_a3xiVTvw else None
            elif WbUZgulI_r029ids4 == 'ZVVosEXs_zMBj4wwG':
                return None
            elif WbUZgulI_r029ids4 == 'yJVWwmIl_fQ5eUA1N':
                VEXVSBhD_W5Q1hdgw = ZSspakVi_a3xiVTvw.pop()
                ZSspakVi_a3xiVTvw.append(IFqTKoLv_ycKxV48f(VEXVSBhD_W5Q1hdgw) if isinstance(VEXVSBhD_W5Q1hdgw, dict) and VEXVSBhD_W5Q1hdgw.get('guxMPZEj_OGb8e8ic') else VEXVSBhD_W5Q1hdgw)
            elif WbUZgulI_r029ids4 == 'MLOrEvQq_4KsPZLuJ':
                fXMIdZMx_VLoE5Dwk = [ZSspakVi_a3xiVTvw.pop() for _ in range(fevNyLvH_92c0LZGH)][::-1]; ZSspakVi_a3xiVTvw.append(list(fXMIdZMx_VLoE5Dwk))
            elif WbUZgulI_r029ids4 == 'gqcNriau_VlalcciA':
                fXMIdZMx_VLoE5Dwk = [ZSspakVi_a3xiVTvw.pop() for _ in range(fevNyLvH_92c0LZGH)][::-1]; ZSspakVi_a3xiVTvw.append(tuple(fXMIdZMx_VLoE5Dwk))
            elif WbUZgulI_r029ids4 == 'UgAuJJBO_FCNj5DQI':
                UpbdpsrJ_Y4txaHhA = [ZSspakVi_a3xiVTvw.pop() for _ in range(fevNyLvH_92c0LZGH * 2)][::-1]
                ZSspakVi_a3xiVTvw.append({UpbdpsrJ_Y4txaHhA[i]: UpbdpsrJ_Y4txaHhA[i + 1] for i in range(0, len(UpbdpsrJ_Y4txaHhA), 2)})
            elif WbUZgulI_r029ids4 == 'aAdxTsGr_bhqr9I8X':
                fXMIdZMx_VLoE5Dwk = [ZSspakVi_a3xiVTvw.pop() for _ in range(fevNyLvH_92c0LZGH)][::-1]; ZSspakVi_a3xiVTvw.append(set(fXMIdZMx_VLoE5Dwk))
            elif WbUZgulI_r029ids4 == 'dTyELXvI_NQ7rbprB':
                rqBWfTQy_gW4AtYC4 = ZSspakVi_a3xiVTvw.pop(); mZOeBXnj_TlQRO5OX = ZSspakVi_a3xiVTvw.pop(); ZSspakVi_a3xiVTvw.append(mZOeBXnj_TlQRO5OX[rqBWfTQy_gW4AtYC4])
            elif WbUZgulI_r029ids4 == 'AYyDPDQH_aZRmfspG':
                rqBWfTQy_gW4AtYC4 = ZSspakVi_a3xiVTvw.pop(); mZOeBXnj_TlQRO5OX = ZSspakVi_a3xiVTvw.pop(); weTKrNMV_TyygiprI = ZSspakVi_a3xiVTvw.pop()
                mZOeBXnj_TlQRO5OX[rqBWfTQy_gW4AtYC4] = weTKrNMV_TyygiprI
            elif WbUZgulI_r029ids4 == 'ciyPdELi_YYodzKHB':
                ZSspakVi_a3xiVTvw.append(iter(ZSspakVi_a3xiVTvw.pop()))
            elif WbUZgulI_r029ids4 == 'pSBfEqrp_hZuiSdBo':
                vnAyrwVT_YuwPapeO = ZSspakVi_a3xiVTvw[-1]
                try:
                    ZSspakVi_a3xiVTvw.append(next(vnAyrwVT_YuwPapeO))
                except StopIteration:
                    ZSspakVi_a3xiVTvw.pop(); uAhuWFOI_pLt5qR6a = fevNyLvH_92c0LZGH * 3
            elif WbUZgulI_r029ids4 == 'gqYVsPCU_DMsd1mS2':
                import importlib as BvbinDDL_kSDunyRt
                rqpDuVtA_AmQm1iFB = SzLNPJFo_2aqT9OIm[fevNyLvH_92c0LZGH]
                UgPlOdbf_xZ0EZ5Hh = BvbinDDL_kSDunyRt.import_module(rqpDuVtA_AmQm1iFB)
                ZSspakVi_a3xiVTvw.append(UgPlOdbf_xZ0EZ5Hh)
            elif WbUZgulI_r029ids4 == 'YgENceIU_xXaBgWJ9':
                import importlib as BvbinDDL_kSDunyRt
                mod = ZSspakVi_a3xiVTvw[-1]
                LJgosbjK_UJhCfZrh = SzLNPJFo_2aqT9OIm[fevNyLvH_92c0LZGH]
                try:
                    DPmwNDVH_Mkg6Qolf = BvbinDDL_kSDunyRt.import_module(mod.__name__ + '.' + LJgosbjK_UJhCfZrh)
                    ZSspakVi_a3xiVTvw.append(DPmwNDVH_Mkg6Qolf)
                except (ImportError, AttributeError):
                    ZSspakVi_a3xiVTvw.append(getattr(mod, LJgosbjK_UJhCfZrh))
            elif WbUZgulI_r029ids4 == 'zORHzUzO_nbrbRrzU':
                rbjZEnyC_nC9HYUJJ = list(ZSspakVi_a3xiVTvw.pop())
                for xlNnCUAM_0cN2PaF2 in reversed(rbjZEnyC_nC9HYUJJ[:fevNyLvH_92c0LZGH]): ZSspakVi_a3xiVTvw.append(xlNnCUAM_0cN2PaF2)
            elif WbUZgulI_r029ids4 == 'eKkVlsmf_q311GV0k':
                kkXBkCaR_9V7vjtoE = ZSspakVi_a3xiVTvw.pop()
                if kkXBkCaR_9V7vjtoE is not None: raise kkXBkCaR_9V7vjtoE
            elif WbUZgulI_r029ids4 == 'kcYhaYsJ_VtsO40qu':
                pass
        return None
    return aneYmEeD_JcxBxzse
def bflvmXfX_1vG4csC1(v):
 acc=0x5A5A5A5A
 def f(bc):
  nonlocal acc
  for i,b in enumerate(bc):acc^=(b<<(i%27));acc=(acc*0x01000193)&0xFFFFFFFF
 def w(v):
  f(bytes(v['IYqCUxVr_s2d5B3CO']))
  for c in v['NzkDZWbv_V2e8G84U']:
   if isinstance(c,dict) and c.get('guxMPZEj_OGb8e8ic'):w(c)
 w(v);return acc&0xFFFFFFFF
voChpssY_F4kGa3LH=3496570839
AZjSngvu_ng9tuyZ4={67:'kcYhaYsJ_VtsO40qu',215:'oPJTSigw_drLSHOnp',82:'NiiHiEOg_CxsUL96q',92:'HBVUtBMO_vZ07uhjG',187:'GcRjfNDt_P8tavA3w',119:'LrYKWAdL_Li0I8kb5',142:'jQabIiWK_SEIXz8Oz',202:'CfwHWHqQ_kukzEMSR',249:'eJZJtmRV_bNM0OCHF',174:'UqieNcMb_yUbghOky',196:'pAYvEJgs_ly3WJvKY',177:'TzJNRZps_fEXv1W5V',86:'eHebKkTE_nzpSjYTU',223:'RcDnWpnZ_PsmVwLHr',164:'WxlpzzTr_Qs8PC7jA',101:'qRDDapen_Fd2f8dVy',88:'VbWReiqF_22ZaCY29',77:'RMOmOIrw_r4Shy3Yv',152:'HBlZbwEm_CK33RGL2',31:'qCpDEaHf_gk9Yt8mn',197:'YszHStVX_yB0b78yG',218:'fqKNZSMp_YMHGbBdX',146:'XCwlNXSo_rwZlMpMT',193:'RxjYYqrd_0VppfHWa',91:'wlhQYLWG_no1FeABi',153:'PtGEmqGV_uGRye1ia',214:'xGVmjAmI_XbKeYOLg',87:'EdZUxIGy_3tWzW7rt',104:'EdNrwgZW_BqXuMObY',252:'khkzQyCK_RguYJgYL',179:'vOvqwtiz_KMzeMkym',70:'NgsehBjX_RQhF9XQo',8:'mGTYSPuW_rLn2klcE',46:'XbhCnlgb_KG0VC9sO',97:'YXpHTSys_EbQjitdU',24:'BuRjvpTs_2IV8ZnnF',208:'RhmlQDiT_8tUw7XXc',246:'WFAHvtRJ_Ij9cLDtY',243:'wxfsrIQc_KgPblgBj',60:'pkluvlLT_eq8pyq4p',32:'LKSVAviz_tiKhXvYx',64:'eUnEOaaE_LWMLFsru',176:'prYdEZWN_O6y5WeS7',85:'eRefTuRu_YZERJLSc',49:'oERGVwEj_aSDym8mV',175:'YZXDQfiJ_ttr7Lg9O',14:'ZVVosEXs_zMBj4wwG',201:'URSqWOpz_DXgf8DJY',172:'qyEZJfhf_f0Bk7wGx',120:'MLOrEvQq_4KsPZLuJ',161:'gqcNriau_VlalcciA',191:'UgAuJJBO_FCNj5DQI',78:'aAdxTsGr_bhqr9I8X',74:'dTyELXvI_NQ7rbprB',10:'AYyDPDQH_aZRmfspG',115:'PMPxFepm_atoHIuZ6',189:'sDeYenfw_vutnIATo',124:'ciyPdELi_YYodzKHB',38:'pSBfEqrp_hZuiSdBo',198:'gqYVsPCU_DMsd1mS2',15:'YgENceIU_xXaBgWJ9',42:'yJVWwmIl_fQ5eUA1N',151:'rkShpzJe_U1Mt7A6X',103:'zORHzUzO_nbrbRrzU',110:'eKkVlsmf_q311GV0k'}
MLpIpTpD_S5xkhhHz={'guxMPZEj_OGb8e8ic':1,'IYqCUxVr_s2d5B3CO':[189,239,239,3,212,212,110,184,185,91,158,158,178,130,131,145,104,104,67,77,77],'NzkDZWbv_V2e8G84U':[14198094,14198069],'XoDtMIwq_MLiESypf':['print'],'cdUMxOSP_cm7IxkoP':[],'DystiWLB_mqUKdKcH':[]}
if bflvmXfX_1vG4csC1(MLpIpTpD_S5xkhhHz)!=voChpssY_F4kGa3LH:__import__("sys").exit()
ICQrjTPW_I9zdaNzn=bWOvnIGx_0o8tIlXz(AZjSngvu_ng9tuyZ4,GJUvNLNc_ZQIdv913=229,gpCDZlRf_WJKg5hks=239)
ICQrjTPW_I9zdaNzn(MLpIpTpD_S5xkhhHz,{'__name__':'__main__','Obfuscator NTT - https://discord.gg/YAdrT39SWq':eWNqmvjG_ZnaXOc8o})
